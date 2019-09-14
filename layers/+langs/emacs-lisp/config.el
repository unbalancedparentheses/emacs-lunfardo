(use-package paredit
  :ensure t)

(use-package paxedit
  :ensure t)

(use-package emacs-lisp
  :init
  (add-hook 'emacs-lisp-mode-hook 'lisp-family-modes))
