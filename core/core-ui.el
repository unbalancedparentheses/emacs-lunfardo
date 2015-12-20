(global-linum-mode 1)
(global-visual-line-mode 1)
(set-face-attribute 'linum nil :height 100)

(use-package powerline
  :config
  (powerline-default-theme)
  :ensure t)

(use-package material-theme
  :init
  (load-theme 'material t)
  :ensure t)

(use-package yascroll
  :init (global-yascroll-bar-mode)
  :ensure t)

(use-package rainbow-delimiters
  :init
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
  :ensure t)

(use-package fill-column-indicator
  :init
  (add-hook 'prog-mode-hook 'fci-mode)
  :config
  (setq fci-rule-column 90)
  :ensure t)

(use-package beacon
  :init (beacon-mode 1)
  :config
  (setq beacon-push-mark 35)
  :ensure t)

(provide 'core-ui)
