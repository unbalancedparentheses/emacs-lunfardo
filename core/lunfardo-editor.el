(require 'multiple-cursors)
(require 'expand-region)

(helm-mode 1)

;; yo, check my syntax
(global-flycheck-mode t)

;; bling bling, cool scroll bar
(global-yascroll-bar-mode)

;; it makes backspace and C-d erase all consecutive white space
;; in a given direction instead of just one
(require 'hungry-delete)
(global-hungry-delete-mode t)
(smartparens-global-mode t)

;; modular in-buffer completion framework for Emacs
(require 'company)
(global-company-mode)

;; diff-hl
(require 'diff-hl)
(global-diff-hl-mode +1)

;; rainbow delimiters is a “rainbow parentheses”-like mode which highlights
;; parentheses, brackets, and braces according to their depth
(require 'rainbow-delimiters)
(global-rainbow-delimiters-mode 1)

;; deals with parens pairs and tries to be smart about it
(require 'smartparens-config)
(show-smartparens-global-mode t)

;; sets background color to strings that match color names
(require 'rainbow-mode)
(rainbow-mode 1)
;; e.g. #0000ff is displayed in white with a blue background

;; drag Stuff is a minor mode for Emacs that makes it possible to drag stuff (words, region, lines)
(require 'drag-stuff)
(drag-stuff-global-mode t)

;; add parts of each file's directory to the buffer name if not unique
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(require 'saveplace)
(setq-default save-place t)

;; whitespace-mode config
(require 'whitespace)
(global-whitespace-mode 1)
(setq whitespace-line-column 80) ;; limit line length
(setq whitespace-style '(face tabs empty trailing lines-tail))
;; lines should be 80 characters wide, not 72
(setq fill-column 80)

;; smart tab behavior - indent or complete
(setq tab-always-indent 'complete)

;; hippie expand is dabbrev expand on steroids
(setq hippie-expand-try-functions-list '(try-expand-dabbrev
                                         try-expand-dabbrev-all-buffers
                                         try-expand-dabbrev-from-kill
                                         try-complete-file-name-partially
                                         try-complete-file-name
                                         try-expand-all-abbrevs
                                         try-expand-list
                                         try-expand-line
                                         try-complete-lisp-symbol-partially
                                         try-complete-lisp-symbol))


;; projectile is a project management mode
(require 'projectile)
(projectile-global-mode t)

;; anzu-mode enhances isearch by showing total matches and current match position
(require 'anzu)
(global-anzu-mode)

;; represent undo-history as an actual tree (visualize with C-x u)
(require 'undo-tree)
(setq undo-tree-mode-lighter "")
(global-undo-tree-mode)

;; use shift + arrow keys to switch between visible buffers
(require 'windmove)
(windmove-default-keybindings)

;; when enabled, typing certain characters(like newlines) triggers reindentation
(electric-indent-mode 1)

;; allow pasting selection outside of Emacs
(setq x-select-enable-clipboard t)

;; also auto refresh dired, but be quiet about it
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)

;; show keystrokes in progress
(setq echo-keystrokes 0.1)

;; move files to trash when deleting
(setq delete-by-moving-to-trash t)

;; real emacs knights don't use shift to mark things
(setq shift-select-mode nil)

;; transparently open compressed files
(auto-compression-mode t)

;; enable syntax highlighting for older Emacsen that have it off
(global-font-lock-mode t)

;; revert buffers automatically when underlying files are changed externally
(global-auto-revert-mode t)

;; UTF-8 please
(setq locale-coding-system 'utf-8) ; pretty
(set-terminal-coding-system 'utf-8) ; pretty
(set-keyboard-coding-system 'utf-8) ; pretty
(set-selection-coding-system 'utf-8) ; please
(prefer-coding-system 'utf-8) ; with sugar on top

;; show active region
(transient-mark-mode 1)
(make-variable-buffer-local 'transient-mark-mode)
(put 'transient-mark-mode 'permanent-local t)
(setq-default transient-mark-mode t)

;; remove text in active region if inserting text
(delete-selection-mode t)

;; don't backupfiles
(setq make-backup-files nil)
(setq auto-save-default nil)

;; i hate lockfiles, aka .#file
(setq create-lockfiles nil)

;; save a list of recent files visited. (open recent file with C-x f)
(recentf-mode 1)
(setq recentf-max-saved-items 100) ;; just 20 is too recent

;; save minibuffer history
(savehist-mode 1)
(setq history-length 1000)

;; undo/redo window configuration with C-c <left>/<right>
(winner-mode 1)

;; never insert tabs
(set-default 'indent-tabs-mode nil)

;; show me empty lines after buffer end
(set-default 'indicate-empty-lines t)

;; easily navigate sillycased words
(global-subword-mode 1)

;; don't break lines for me, please
(setq-default truncate-lines t)

;; allow recursive minibuffers
(setq enable-recursive-minibuffers t)

;; don't be so stingy on the memory, we have lots now. It's the distant future.
(setq gc-cons-threshold 20000000)

;; sentences do not need double spaces to end. Period.
(set-default 'sentence-end-double-space nil)

;; a saner ediff
(setq ediff-diff-options "-w")
(setq ediff-split-window-function 'split-window-horizontally)
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

;; nic says eval-expression-print-level needs to be set to nil (turned off) so
;; that you can always see what's happening.
(setq eval-expression-print-level nil)

;; when popping the mark, continue popping until the cursor actually moves
;; also, if the last command was a copy - skip past all the expand-region cruft.
(defadvice pop-to-mark-command (around ensure-new-position activate)
  (let ((p (point)))
    (when (eq last-command 'save-region-or-current-line)
      ad-do-it
      ad-do-it
      ad-do-it)
    (dotimes (i 10)
      (when (= p (point)) ad-do-it))))

;; insert an empty line after the current line.
;; iosition the cursor at its beginning, according to the current mode."
(defun smart-open-line ()
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))

(global-set-key [(shift return)] 'smart-open-line)

(provide 'lunfardo-editor)
