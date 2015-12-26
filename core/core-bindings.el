(cua-mode t)

(global-set-key (kbd "C-a") 'back-to-indentation-or-beginning-of-line)
(global-set-key (kbd "RET") 'newline-and-indent)

(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key  (kbd "C-+") 'text-scale-increase)

(global-set-key  (kbd "<C-tab>") 'next-buffer)
(global-set-key  (kbd "<C-iso-lefttab>") 'previous-buffer)
(global-set-key  (kbd "<C-S-tab>") 'previous-buffer)

;; replace buffer-menu with ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key [(shift return)] 'open-line-below)
(global-set-key [(control shift return)] 'open-line-above)

(global-set-key (kbd "s-I") 'lunfardo/open-init)
(global-set-key (kbd "s-w") 'kill-buffer-and-window)
(global-set-key (kbd "s-p") 'counsel-M-x)
(global-set-key (kbd "s-g") 'goto-line)

(global-set-key (kbd "s-O") 'projectile-find-file)

(global-set-key (kbd "s-f") 'swiper)
(global-set-key (kbd "s-F") 'helm-projectile-ag)

(global-set-key (kbd "s-l") 'er/expand-region)

(global-set-key (kbd "s-N") 'switch-to-scratch)
(global-set-key (kbd "s-n") 'new-empty-buffer)

(global-set-key (kbd "s-r") 'ivy-imenu-goto)

(global-set-key (kbd "<f9>") 'indent-buffer)

(provide 'core-bindings)
