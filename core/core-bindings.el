(cua-mode t)

;; disable fucking emacs suspend/free
(global-set-key (kbd "C-x C-z") nil)

(global-set-key (kbd "C-a") 'back-to-indentation-or-beginning-of-line)
(global-set-key (kbd "RET") 'newline-and-indent)

(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key  (kbd "C-+") 'text-scale-increase)

(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "C-s") 'swiper)

(global-set-key (kbd "C-x b") 'ivy-switch-buffer)

(global-set-key [(shift return)] 'open-line-below)
(global-set-key [(control shift return)] 'open-line-above)

(global-set-key (kbd "s-I") 'lunfardo/open-init)
(global-set-key (kbd "s-w") 'kill-buffer-and-window)
(global-set-key (kbd "s-p") 'counsel-M-x)
(global-set-key (kbd "s-g") 'goto-line)

(global-set-key (kbd "s-f") 'swiper)
(global-set-key (kbd "s-F") 'counsel-git-grep)

(global-set-key (kbd "s-l") 'er/expand-region)

(global-set-key (kbd "s-N") 'switch-to-scratch)
(global-set-key (kbd "s-n") 'new-empty-buffer)

(global-set-key (kbd "s-r") 'counsel-imenu)
(global-set-key (kbd "s-e") 'evil-mode)

(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "s-o") 'counsel-find-file)
(global-set-key (kbd "s-O") 'counsel-git)
(global-set-key (kbd "s-a") 'counsel-ag)
(global-set-key (kbd "s-A") 'helm-projectile-ag)
(global-set-key (kbd "C-c f") 'counsel-describe-function)
(global-set-key (kbd "s-y") 'counsel-yank-pop)

(global-set-key (kbd "C-l") 'er/expand-region)
(global-set-key (kbd "s-.") 'avy-goto-word-or-subword-1)
(global-set-key (kbd "s-d") 'mc/mark-next-like-this)
(global-set-key (kbd "s-D") 'mc/mark-previous-like-this)
(global-set-key (kbd "s-L") 'mc/edit-lines)

(global-set-key (kbd "s-z") 'undo-tree-undo)
(global-set-key (kbd "s-Z") 'undo-tree-redo)
(global-set-key (kbd "s-u") 'undo-tree-visualize)

(global-set-key (kbd "s-h") 'anzu-query-replace)
(global-set-key (kbd "s-/") 'evilnc-comment-or-uncomment-lines)
(global-set-key (kbd "C-h b") 'helm-descbinds)

(global-set-key (kbd "<f2>") 'rename-this-buffer-and-file)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "<f8>") 'global-aggressive-indent-mode)
(global-set-key (kbd "<f9>") 'indent-buffer)
(global-set-key (kbd "<f10>") 'magit-status)
(global-set-key (kbd "<f12>") 'helm-flycheck)

(provide 'core-bindings)
