(setq prettify-symbols-unprettify-at-point t)
(global-prettify-symbols-mode 1)

;; cleanup whitespace on save
(use-package whitespace-cleanup-mode
  :init
  (global-whitespace-cleanup-mode t)
  :ensure t)

;; auto save on lost focus
(add-hook 'focus-out-hook (lambda () (save-some-buffers t)))

(use-package highlight-symbol
  :init
  (add-hook 'prog-mode-hook 'highlight-symbol-mode)
  :ensure t)

(use-package smartparens
  :init
  (smartparens-global-mode t)
  :ensure t)

;; highlighting portions relating to the operations.
(use-package volatile-highlights
  :if (display-graphic-p)
  :init
  (require 'volatile-highlights)
  (volatile-highlights-mode t)
  :ensure t)

(use-package aggressive-indent
  :ensure t)

(use-package undo-tree
  :init (undo-tree-mode t)
  :ensure t)

(use-package hungry-delete
  :init (global-hungry-delete-mode t)
  :ensure t)

(use-package anzu
  :init
  (global-anzu-mode +1)
  :ensure t)

(use-package evil-nerd-commenter
  :ensure t)

(use-package counsel
  :ensure t)

(use-package flx
  :ensure t)

(use-package swiper
  :ensure t)

(use-package ivy
  :init
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-re-builders-alist '((t . ivy--regex-plus)))
  (setq ivy-wrap t)
  (setq ivy-initial-inputs-alist nil)
  (define-key ivy-minibuffer-map (kbd "<C-tab>") 'ivy-next-line)
  (define-key ivy-minibuffer-map (kbd "<C-S-tab>") 'ivy-previous-line)
  (setq magit-completing-read-function 'ivy-completing-read))

(use-package ag
  :ensure t)

(use-package helm-projectile
  :ensure t)

(use-package projectile
  :config
  (setq projectile-completion-system 'ivy)
  :ensure t)

(provide 'core-editor)
