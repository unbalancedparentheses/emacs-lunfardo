;; smart new line
(global-set-key (kbd "<S-return>") 'smart-open-line)

;; Font size
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

(global-set-key (kbd "C-x O") (lambda ()
                                (interactive)
                                (other-window -1)))

(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

(global-set-key (kbd "C-z") 'shell)

;; Completion at point
(global-set-key (kbd "C-<tab>") 'completion-at-point)

;; Comment/uncomment block
(global-set-key (kbd "C-c c") 'comment-or-uncomment-region)
(global-set-key (kbd "C-c u") 'uncomment-region)

(global-set-key (kbd "C-c SPC") 'ace-jump-word-mode)

;; Opens up the beatiful helm-projectile
(global-set-key (kbd "C-c h") 'helm-projectile)

;; Line movement
(global-set-key (kbd "<C-M-down>") 'move-text-down)
(global-set-key (kbd "<C-M-up>") 'move-text-up)

(global-set-key (kbd "M-y") 'helm-show-kill-ring)

(global-set-key [remap kill-ring-save] 'easy-kill)

;; buffer move
(global-set-key (kbd "<s-up>") 'buf-move-up)
(global-set-key (kbd "<s-down>") 'buf-move-down)
(global-set-key (kbd "<s-left>") 'buf-move-left)
(global-set-key (kbd "<s-right>") 'buf-move-right)

;; make some use of the Super key
(define-key global-map [?\s-d] 'mc/mark-next-like-this)
(define-key global-map [?\s-f] 'projectile-find-file)
(define-key global-map [?\s-p] 'projectile-switch-project)
(define-key global-map [?\s-g] 'projectile-grep)
(define-key global-map [?\s-t] 'helm-semantic-or-imenu)
(define-key global-map [?\s-l] 'goto-line)
(define-key global-map [?\s-L] 'discover-my-major)
(define-key global-map [?\s-e] 'er/expand-region)
(define-key global-map [?\s-m] 'magit-status)
(define-key global-map [?\s-w] 'delete-frame)
(define-key global-map [?\s-x] 'exchange-point-and-mark)
(define-key global-map [?\s-u] 'undo-tree-visualize)

(provide 'lunfardo-bindings)
