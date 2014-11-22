(defun switch-to-previous-buffer ()
  "Switch to previously open buffer.
Repeated invocations toggle between the two most recently open buffers."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

;; insert an empty line after the current line.
;; iosition the cursor at its beginning, according to the current mode."
(defun smart-open-line ()
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))

(defun find-user-init-file ()
  "Edit the `user-init-file', in another window."
  (interactive)
  (find-file-other-window user-init-file))

(defun indent-or-complete ()
    (interactive)
    (if (looking-at "\\_>")
        (company-complete-common)
      (indent-according-to-mode)))

(defun lunfardo-kill-whole-line (&optional arg)
  "A simple wrapper around command `kill-whole-line' that respects indentation.
Passes ARG to command `kill-whole-line' when provided."
  (interactive "p")
  (kill-whole-line arg)
  (back-to-indentation))

(require 'epl)

(defun prelude-update ()
  "Update Lunfardo to its latest version."
  (interactive)
  (when (y-or-n-p "Do you want to update Lunfardo? ")
    (message "Updating installed packages...")
    (epl-upgrade)
    (message "Updating Lunfardo...")
    (cd lunfardo-dir)
    (shell-command "git pull")
    (message "Update finished. Restart Emacs to complete the process.")))

(provide 'lunfardo-core)
