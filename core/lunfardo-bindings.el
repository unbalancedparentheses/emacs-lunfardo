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

(global-set-key (kbd "s-d") 'mc/mark-next-like-this)
(global-set-key (kbd "s-f") 'projectile-find-file)
(global-set-key (kbd "s-p") 'projectile-switch-project)
(global-set-key (kbd "s-g") 'projectile-grep)
(global-set-key (kbd "s-t") 'helm-semantic-or-imenu)
(global-set-key (kbd "s-s") 'helm-swoop)
(global-set-key (kbd "s-c") 'helm-flycheck)
(global-set-key (kbd "s-l") 'goto-line)
(global-set-key (kbd "s-h") 'discover-my-major)
(global-set-key (kbd "s-e") 'er/expand-region)
(global-set-key (kbd "s-m") 'magit-status)
(global-set-key (kbd "s-w") 'delete-frame)
(global-set-key (kbd "s-x") 'exchange-point-and-mark)
(global-set-key (kbd "s-u") 'undo-tree-visualize)

(provide 'lunfardo-bindings)
