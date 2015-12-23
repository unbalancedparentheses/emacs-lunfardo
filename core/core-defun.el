(defun lunfardo/recompile-init ()
  "Byte-compile all your dotfiles again."
  (interactive)
  (byte-recompile-directory user-emacs-directory 0))

(defun lunfardo/update ()
  "Update Lunfardo to its latest version."
  (interactive)
  (when (y-or-n-p "Do you want to update Lunfardo ")
    (message "Updating installed packages...")
    (auto-package-update-now)
    (message "Updating Lunfardo...")
    (cd user-emacs-directory)
    (shell-command "git pull")
    (lunfardo/recompile-init)
    (message "Update finished. Restart Emacs to complete the process.")))

(provide 'core-defun)
