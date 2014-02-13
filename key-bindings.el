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

;; Easier text scale
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

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

;; Experimental multiple-cursors
(global-set-key (kbd "C-S-c C-e") 'mc/edit-ends-of-lines)
(global-set-key (kbd "C-S-c C-a") 'mc/edit-beginnings-of-lines)
(global-set-key (kbd "C-S-l") 'mc/edit-lines)

;; make some use of the Super key
(define-key global-map [?\s-d] 'mc/mark-all-like-this)
(define-key global-map [?\s-f] 'projectile-find-file)
(define-key global-map [?\s-p] 'projectile-switch-project)
(define-key global-map [?\s-g] 'projectile-grep)
(define-key global-map [?\s-l] 'goto-line)
(define-key global-map [?\s-e] 'er/expand-region)
(define-key global-map [?\s-m] 'magit-status)
(define-key global-map [?\s-w] 'delete-frame)
(define-key global-map [?\s-x] 'exchange-point-and-mark)

(provide 'key-bindings)
