(use-package diminish
  :ensure t)

(setq diminish-modes '(helm-mode
                   yas-minor-mode
                   eldoc-mode
                   company-mode
                   projectile-mode
                   flyspell-mode
                   smartparens-mode
                   flycheck-mode
                   subword-mode
                   visual-hl
                   ivy-mode
                   anzu-mode
                   undo-tree-mode
                   whitespace-cleanup-mode
                   wrap-mode
                   highlight-symbol-mode
                   volatile-highlights-mode
                   visual-line-mode
                   hungry-delete-mode
                   auto-revert-mode))

(mapcar #'(lambda (mode)
            (diminish mode))
        diminish-modes)

(provide 'core-diminish)
