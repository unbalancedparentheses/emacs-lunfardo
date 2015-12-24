(use-package flycheck
  :init
  (global-flycheck-mode)
  :config
  ;; list of events that trigger a new syntax check in the current buffer
  (setq flycheck-check-syntax-automatically '(save
                                              mode-enabled))
  :ensure t)

(use-package helm-flycheck
  :bind ("<f12>" . helm-flycheck)
  :ensure t)

(provide 'core-flycheck)
