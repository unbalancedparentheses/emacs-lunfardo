(use-package flycheck
  :init
  (global-flycheck-mode)
  :ensure t)

(use-package helm-flycheck
  :bind ("<f12>" . helm-flycheck)
  :ensure t)

(provide 'core-flycheck)
