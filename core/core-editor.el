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
(setq gc-cons-threshold 500000000)

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

;; Answering just 'y' or 'n' will do
(defalias 'yes-or-no-p 'y-or-n-p)

;; no blinking cursor
(blink-cursor-mode -1)

;; never insert tabs
(set-default 'indent-tabs-mode nil)

;; show me empty lines after buffer end
(set-default 'indicate-empty-lines t)
(setq-default truncate-lines t)

(cua-mode t)

(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key  (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "RET") 'newline-and-indent)

(global-set-key  (kbd "C-<tab>") 'next-buffer)
(global-set-key  (kbd "<C-iso-lefttab>") 'previous-buffer)

;; replace buffer-menu with ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

(provide 'core-editor)
