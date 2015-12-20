;; this is only applicable to GUI mode
(when (display-graphic-p)
  ;; Treat command as super
  (setq mac-command-key-is-meta nil)
  (setq mac-command-modifier 'super)
  (setq mac-option-key-is-meta t))

(use-package exec-path-from-shell
  :init
  (exec-path-from-shell-initialize)
  :ensure t)

(provide 'core-osx)
