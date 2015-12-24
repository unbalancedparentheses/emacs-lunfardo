(use-package diff-hl
  :config
  (global-diff-hl-mode t)
  :ensure t)

(use-package magit
  :bind
  (("<f10>" . magit-status))
  :ensure t)

(provide 'core-git)
