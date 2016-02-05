(use-package helm
  :init
  (setq helm-M-x-fuzzy-match t
	helm-buffers-fuzzy-matching t
	helm-recentf-fuzzy-match t)
  :bind
  (("M-y" . helm-show-kill-ring)
   )
  :ensure t)

(use-package helm-descbinds
  :bind
  (("C-h b" . helm-descbinds))
  :ensure t)

(use-package helm-ag
  :ensure t)

(provide 'core-helm)
