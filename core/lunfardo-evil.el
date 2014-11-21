(lunfardo-require-packages '(evil
                             evil-args
                             evil-escape
                             evil-exchange
                             evil-matchit
                             evil-nerd-commenter
                             evil-surround evil-visualstar
                             ))
;; Press fd quickly to escape from insert state and everything else in Emacs
(evil-escape-mode t)

(setq evil-emacs-state-cursor '("red" box))
(setq evil-normal-state-cursor '("green" box))
(setq evil-visual-state-cursor '("orange" box))
(setq evil-insert-state-cursor '("red" bar))
(setq evil-replace-state-cursor '("red" bar))
(setq evil-operator-state-cursor '("red" hollow))

(require 'evil-exchange)
(evil-exchange-install)

(require 'evil-args)

;; bind evil-args text objects
(define-key evil-inner-text-objects-map "a" 'evil-inner-arg)
(define-key evil-outer-text-objects-map "a" 'evil-outer-arg)

;; bind evil-forward/backward-args
(define-key evil-normal-state-map "L" 'evil-forward-arg)
(define-key evil-normal-state-map "H" 'evil-backward-arg)
(define-key evil-motion-state-map "L" 'evil-forward-arg)
(define-key evil-motion-state-map "H" 'evil-backward-arg)

;; bind evil-jump-out-args
(define-key evil-normal-state-map "K" 'evil-jump-out-args)

(evilnc-default-hotkeys)

(define-key evil-normal-state-map (kbd "SPC") 'ace-jump-mode)

(global-evil-surround-mode 1)

(setq evil-default-state 'emacs)
(evil-mode t)

(provide 'lunfardo-evil)
