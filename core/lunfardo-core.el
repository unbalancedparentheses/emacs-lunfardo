;; https://github.com/Fuco1/smartparens/issues/271
(unless (fboundp 'cua-replace-region)
  (defun cua-replace-region ()
    "Replace the active region with the character you type."
    (interactive)
    (let ((not-empty (and cua-delete-selection (cua-delete-region))))
      (unless (eq this-original-command this-command)
        (let ((overwrite-mode
               (and overwrite-mode
                    not-empty
                    (not (eq this-original-command 'self-insert-command)))))
          (cua--fallback))))))

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

(defun generate-buffer ()
  (interactive)
  (switch-to-buffer (make-temp-name "scratch")))

(defvar killed-file-list nil
  "List of recently killed files.")

(defun add-file-to-killed-file-list ()
  "If buffer is associated with a file name, add that file to the
`killed-file-list' when killing the buffer."
  (when buffer-file-name
    (push buffer-file-name killed-file-list)))

(add-hook 'kill-buffer-hook #'add-file-to-killed-file-list)

(defun reopen-killed-file ()
  "Reopen the most recently killed file, if one exists."
  (interactive)
  (when killed-file-list
    (find-file (pop killed-file-list))))

(defun lunfardo-kill-whole-line (&optional arg)
  "A simple wrapper around command `kill-whole-line' that respects indentation.
Passes ARG to command `kill-whole-line' when provided."
  (interactive "p")
  (kill-whole-line arg)
  (back-to-indentation))

(defun lunfardo-escape-quit ()
  "Forcefully closes the minibuffer window."
  (interactive)
  (when (active-minibuffer-window)
    (select-window (active-minibuffer-window)))
  (keyboard-escape-quit))

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
