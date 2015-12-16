(require 'package)
(require 'cl)

(add-to-list 'package-archives
  '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
  '("marmalade" . "https://marmalade-repo.org/packages/"))

(package-initialize)

(defvar lunfardo-packages
  '(use-package))

(defun lunfardo-packages-installed-p ()
  "Check if all packages in `lunfardo-packages' are installed."
  (every #'package-installed-p lunfardo-packages))

(defun lunfardo-require-package (package)
  "Install PACKAGE unless already installed."
  (unless (memq package lunfardo-packages)
    (add-to-list 'lunfardo-packages package))
  (unless (package-installed-p package)
    (package-install package)))

(defun lunfardo-require-packages (packages)
  "Ensure PACKAGES are installed.
Missing packages are installed automatically."
  (mapc #'lunfardo-require-package packages))

(defun lunfardo-install-packages ()
  "Install all packages listed in `lunfardo-packages'."
  (unless (lunfardo-packages-installed-p)
    ;; check for new packages (package versions)
    (message "%s" "Emacs Lunfardo is now refreshing its package database...")
    (package-refresh-contents)
    (message "%s" " done.")
    ;; install the missing packages
    (lunfardo-require-packages lunfardo-packages)))

(lunfardo-install-packages)

(load-theme 'material t)

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

;; whitespace-mode config
(require 'whitespace)
(setq whitespace-line-column 90) ;; limit line length
(setq whitespace-style '(face tabs empty trailing lines-tail))


(setq initial-scratch-message "")
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message 'current-user)

;; Answering just 'y' or 'n' will do
(defalias 'yes-or-no-p 'y-or-n-p)

(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

(global-prettify-symbols-mode 1)

(require 'use-package)
(use-package magit
  :ensure t)

