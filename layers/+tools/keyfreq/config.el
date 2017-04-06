(use-package keyfreq
  :init
  (keyfreq-mode 0)
  (keyfreq-autosave-mode 0)
  :config
  (setq keyfreq-excluded-commands
        '(self-insert-command
          abort-recursive-edit
          forward-char
          backward-char
          previous-line
          next-line))
  :ensure t)
