;;; package --- lunfardo
;;;
;;; commentary:
;;; my Emacs config
;;;
;;; code:

;; always load newest byte code
(setq load-prefer-newer t)

;; welcome message
(setq initial-scratch-message "")
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message 'current-user)

;; package
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/")
             '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)

;; start maximized
(toggle-frame-maximized)

;; Revert (update) buffers automatically when underlying files are changed externally.
(global-auto-revert-mode t)

(fset 'yes-or-no-p 'y-or-n-p)      ; y and n instead of yes and no everywhere else
(delete-selection-mode 1)

;; don't backupfiles
(setq make-backup-files nil)
(setq auto-save-default nil)

;; i hate lockfiles, aka .#file
(setq create-lockfiles nil)

;; save a list of recent files visited. (open recent file with C-x f)
(recentf-mode 1)

;; removes nasty bell
(setq ring-bell-function 'ignore)

;; no blinking cursor
(blink-cursor-mode -1)

;; never insert tabs
(set-default 'indent-tabs-mode nil)

;; minimal ui
;; show me empty lines after buffer end
(set-default 'indicate-empty-lines t)
(setq-default truncate-lines t)

;; see matching pairs of parentheses and other characters
(show-paren-mode t)

(use-package dracula-theme
  :init
  (load-theme 'dracula t)
  :ensure t)

(use-package rainbow-delimiters
  :init
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
  :ensure t)

;; default font size
(set-face-attribute 'default nil :height 180)

(global-visual-line-mode 1)

(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

(setq frame-title-format '("%b (%m)"))


(use-package ivy
  :init
  (ivy-mode 1)
  :ensure t)

(use-package counsel
  :ensure t)

(use-package avy
  :ensure t)

(use-package expand-region
  :ensure t)

(use-package multiple-cursors
  :ensure t)

(use-package undo-tree
  :config (global-undo-tree-mode)
  :ensure t)

(use-package git-gutter
  :config (global-git-gutter-mode +1)
  :ensure t)

(use-package git-timemachine
  :ensure t)

(use-package rainbow-delimiters
  :init
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
  :ensure t)

(global-visual-line-mode 1)

(setq ivy-use-virtual-buffers t)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(use-package magit
  :ensure t)

(use-package whitespace-cleanup-mode
  :init
  (global-whitespace-cleanup-mode t)
  :ensure t)

;; auto save on lost focus
(add-hook 'after-focus-change-function (lambda () (save-some-buffers t)))

(use-package flycheck
  :init
  (global-flycheck-mode)
  :config
  ;; list of events that trigger a new syntax check in the current buffer
  (setq flycheck-check-syntax-automatically '(save
                                              mode-enabled))
  :ensure t)

;; vim
(use-package evil
  :ensure t)

;; bindings
(cua-mode t)

;; disable fucking emacs suspend/free
(global-set-key (kbd "C-x C-z") nil)

;;(global-set-key (kbd "C-a") 'back-to-indentation-or-beginning-of-line)
(global-set-key (kbd "RET") 'newline-and-indent)

(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "C-s") 'swiper)

(global-set-key (kbd "C-x b") 'ivy-switch-buffer)

(global-set-key [(shift return)] 'open-line-below)
(global-set-key [(control shift return)] 'open-line-above)

(global-set-key (kbd "s-/") 'comment-dwim)

(global-set-key (kbd "s-I") 'lunfardo/open-init)
(global-set-key (kbd "s-w") 'kill-buffer-and-window)
(global-set-key (kbd "s-p") 'counsel-M-x)
(global-set-key (kbd "s-P") 'counsel-projectile-switch-project)
(global-set-key (kbd "s-g") 'goto-line)

(global-set-key (kbd "s-f") 'counsel-grep-or-swiper)

(global-set-key (kbd "s-l") 'er/expand-region)

(global-set-key (kbd "s-N") 'switch-to-scratch)
(global-set-key (kbd "s-n") 'new-empty-buffer)

(global-set-key (kbd "s-r") 'counsel-imenu)
(global-set-key (kbd "s-e") 'evil-mode)

(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "s-o") 'counsel-find-file)
(global-set-key (kbd "s-O") 'counsel-git)

(global-set-key (kbd "s-y") 'counsel-yank-pop)

(global-set-key (kbd "C-l") 'er/expand-region)
(global-set-key (kbd "s-.") 'avy-goto-word-or-subword-1)

(global-set-key (kbd "s-z") 'undo-tree-undo)
(global-set-key (kbd "s-Z") 'undo-tree-redo)
(global-set-key (kbd "s-u") 'undo-tree-visualize)

(global-set-key (kbd "s-h") 'anzu-query-replace)

(global-set-key (kbd "<f2>") 'rename-this-buffer-and-file)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "<f8>") 'global-aggressive-indent-mode)
(global-set-key (kbd "<f9>") 'indent-buffer)
(global-set-key (kbd "<f10>") 'magit-status)

;; expand region
;; anzu
;; evil mode

;; multiple-cursors-mode
;; browse-kill-ring
;; show-paren-model
;; lsp-mode
;; rainbow-delimiters-mode
;; smartparens-mode
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" default))
 '(package-selected-packages
   '(julia-mode zenburn-theme yalinum whitespace-cleanup-mode use-package undo-tree sublime-themes subatomic-theme selectrum-prescient rainbow-delimiters multiple-cursors magit ivy-rich guide-key git-timemachine git-gutter flycheck expand-region evil counsel consult-selectrum centaur-tabs avy)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
