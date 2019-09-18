(use-package paredit
  :ensure t)

(use-package paxedit
  :ensure t)

(use-package lisp-mode
  :config
  (add-hook 'emacs-lisp-mode-hook 'lisp-family-modes))
