(require 'package)
(require 'cl)

 (setq
   package-archives
   '(("melpa-stable" . "http://stable.melpa.org/packages/")
     ("melpa" . "http://melpa.org/packages/")
     ("marmalade"   . "http://marmalade-repo.org/packages/")
     ("org"         . "http://orgmode.org/elpa/")
     ("gnu"         . "http://elpa.gnu.org/packages/")))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)

;; welcome message
(setq initial-scratch-message "")
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message 'current-user)

;; don't backupfiles
(setq make-backup-files nil)
(setq auto-save-default nil)

;; i hate lockfiles, aka .#file
(setq create-lockfiles nil)

;; save a list of recent files visited. (open recent file with C-x f)
(recentf-mode 1)
(setq recentf-max-saved-items 100) ;; just 20 is too recent

;; don't be so stingy on the memory, we have lots now. It's the distant future.
(setq gc-cons-threshold 100000000)

;; when superword mode enabled all complex/compound
;; words are treated as single word
(global-superword-mode nil)
;; underscores, dashes and camel-case aware editing
(global-subword-mode t)

;; allow pasting selection outside of Emacs
(setq x-select-enable-clipboard t)

;; show keystrokes in progress
(setq echo-keystrokes 0.1)

;; revert buffers automatically when underlying files are changed externally
(global-auto-revert-mode t)

;; UTF-8 please
(setq locale-coding-system 'utf-8) ; pretty
(set-terminal-coding-system 'utf-8) ; pretty
(set-keyboard-coding-system 'utf-8) ; pretty
(set-selection-coding-system 'utf-8) ; please
(prefer-coding-system 'utf-8) ; with sugar on top

;; remove text in active region if inserting text
(delete-selection-mode t)

;; removes nasty bell
(setq ring-bell-function 'ignore)

;; when superword mode enabled all complex/compound
;; words are treated as single word
(global-superword-mode nil)
;; underscores, dashes and camel-case aware editing
(global-subword-mode t)

;; whitespace-mode config
(require 'whitespace)
(setq whitespace-line-column 90) ;; limit line length
(setq whitespace-style '(face tabs empty trailing lines-tail))

;; Answering just 'y' or 'n' will do
(defalias 'yes-or-no-p 'y-or-n-p)

(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

;; highlight current line
(global-hl-line-mode 1)

(global-prettify-symbols-mode 1)

;; never insert tabs
(set-default 'indent-tabs-mode nil)

;; show me empty lines after buffer end
(set-default 'indicate-empty-lines t)
(setq-default truncate-lines t)

(cua-mode t)

(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key  (kbd "C-+") 'text-scale-increase)

(require 'use-package)

(use-package magit
  :ensure t)

(use-package flycheck
  :ensure t)

(use-package projectile
  :ensure t)

(use-package helm
  :init
  (setq helm-M-x-fuzzy-match t
	helm-buffers-fuzzy-matching t
	helm-recentf-fuzzy-match t)
  :bind
  (("M-y" . helm-show-kill-ring)
   )
  :ensure t)

(use-package helm-flycheck
  :ensure t)

(use-package counsel
  :bind
  (("M-x" . counsel-M-x)
   ("C-x C-f" . counsel-find-file)
   ("C-c C-f" . counsel-git)
   ("C-c f" . counsel-describe-function)
   ("C-c g" . counsel-git-grep)
   ("C-c a" . counsel-ag))
  :ensure t)

(use-package swiper
  :init
  (ivy-mode 1)
  :config
  (setq ivy-use-virtual-buffers t)
  (setq ivy-wrap t)
  :bind
  (("C-s" . swiper)
   ("C-c r" . swiper-query-replace)
   ("C-x b" . ivy-switch-buffer))
  :ensure t)

(use-package aggressive-indent
  :init
  (global-aggressive-indent-mode 1)
  :ensure t)

(use-package auto-package-update
  :init
  (setq auto-package-update-delete-old-versions t)
  (add-hook 'auto-package-update-before-hook
	    (lambda () (message "I will update packages now")))
  :config
  (auto-package-update-maybe)
  :ensure t)

(use-package company
  :init
  (global-company-mode)
  :config
  (defun company-complete-common-or-cycle-backward ()
    (interactive)
    (company-complete-common-or-cycle -1))
  (setq company-idle-delay 0.1
        company-minimum-prefix-length 3
        company-show-numbers t
        company-tooltip-limit 10
        company-selection-wrap-around t
        company-tooltip-flip-when-above t)
  (define-key company-active-map (kbd "TAB") 'company-complete-selection)
  (define-key company-active-map (kbd "<tab>") 'company-complete-selection)
  (define-key company-active-map (kbd "TAB") 'company-complete-common-or-cycle)
  (define-key company-active-map (kbd "<tab>") 'company-complete-common-or-cycle)
  (define-key company-active-map (kbd "<S-tab>") 'company-complete-common-or-cycle-backward)
  (define-key company-active-map (kbd "<backtab>") 'company-complete-common-or-cycle-backward)
  (global-set-key "\t" 'company-indent-or-complete-common)
  :ensure t)

(use-package undo-tree
  :init (undo-tree-mode t)
  :ensure t)

(use-package hungry-delete
  :init (global-hungry-delete-mode t)
  :ensure t)

(use-package avy
  :ensure t)

(use-package diff-hl
  :config
  (global-diff-hl-mode t)
  :ensure t)

(use-package yascroll
  :init (global-yascroll-bar-mode)
  :ensure t)

;; highlighting portions relating to the operations.
(use-package volatile-highlights
  :if (display-graphic-p)
  :init
  (require 'volatile-highlights)
  (volatile-highlights-mode t)
  :ensure t)

;; cleanup whitespace on save
(use-package whitespace-cleanup-mode
  :init
  (add-hook 'before-save-hook 'whitespace-cleanup)
  :ensure t)

;; auto save on lost focus
(add-hook 'focus-out-hook (lambda () (save-some-buffers t)))

(use-package powerline
  :config
  (powerline-default-theme)
  :ensure t)

(use-package material-theme
  :init
  (load-theme 'material t)
  :ensure t)

(use-package rainbow-delimiters
  :init
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
  :ensure t)

(global-linum-mode 1)
(global-visual-line-mode 1)
(set-face-attribute 'linum nil :height 100)

(use-package beacon
  :init (beacon-mode 1)
  :config
  (setq beacon-push-mark 35)
  :ensure t)

;; languages
(use-package erlang
  :init
  (add-hook 'erlang-mode-hook (lambda () (run-hooks 'prog-mode-hook)))
  (add-hook 'erlang-mode-hook 'flycheck-mode)
  :mode
  ("\\.erl\\'" . erlang-mode)
  ("\\.hrl\\'" . erlang-mode)
  :ensure t)
