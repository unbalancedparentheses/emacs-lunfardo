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
  :init
  (global-aggressive-indent-mode 1)
  :ensure t)

(use-package undo-tree
  :init (undo-tree-mode t)
  :bind (("s-z" . undo-tree-undo)
         ("s-Z" . undo-tree-redo)
         ("s-u" . undo-tree-visualize))
  :ensure t)

(use-package hungry-delete
  :init (global-hungry-delete-mode t)
  :ensure t)

(use-package anzu
  :init
  (global-anzu-mode +1)
  :bind
  (("s-h" . anzu-query-replace))
  :ensure t)

(use-package evil-nerd-commenter
  :bind ("s-/" . evilnc-comment-or-uncomment-lines)
  :ensure t)

(use-package counsel
  :bind
  (("M-x" . counsel-M-x)
   ("C-x C-f" . counsel-find-file)
   ("s-o" . counsel-find-file)
   ("C-c f" . counsel-describe-function)
   ("s-a" . counsel-ag))
  :ensure t)

(use-package flx
  :ensure t)

(use-package swiper
  :init
  (ivy-mode 1)
  :config
  (setq ivy-use-virtual-buffers t)
  (setq ivy-wrap t)
  :ensure t)

(use-package ivy
  :init
  (ivy-mode 1)
  ;; show recently killed buffers when calling `ivy-switch-buffer'
  (setq ivy-use-virtual-buffers t)
  (setq ivy-re-builders-alist '((t . ivy--regex-plus))) ; default
  ;; (setq ivy-re-builders-alist '((t . ivy--regex-fuzzy)))

  (define-key ivy-minibuffer-map (kbd "<C-tab>") 'ivy-next-line)
  (define-key ivy-minibuffer-map (kbd "<C-S-tab>") 'ivy-previous-line))

(use-package helm
  :init
  (setq helm-M-x-fuzzy-match t
	helm-buffers-fuzzy-matching t
	helm-recentf-fuzzy-match t)
  :bind
  (("M-y" . helm-show-kill-ring)
   )
  :ensure t)

(use-package helm-descbinds
  :bind
  (("C-h b" . helm-descbinds))
  :ensure t)

(use-package ag
  :ensure t)

(use-package helm-projectile
  :ensure t)

(use-package projectile
  :config
  (setq projectile-completion-system 'ivy)
  :ensure t)


(provide 'core-editor)
