(use-package linum
  :init
  (add-hook 'prog-mode-hook 'linum-mode)
  :ensure t)

(global-visual-line-mode 1)

(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

;; highlight current line
;; (global-hl-line-mode 1)

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

(use-package smooth-scrolling
  :init (require 'smooth-scrolling)
  :ensure t)

(set-face-attribute 'default nil :height 120)
(set-face-attribute 'linum nil :height 100)

;; start maximized
(toggle-frame-maximized)

(provide 'core-ui)
