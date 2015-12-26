(use-package markdown-mode
  :mode
  (("\\.m[k]d" . markdown-mode)
   ("\\.text\\'" . markdown-mode)
   ("\\.markdown\\'" . markdown-mode))
  :ensure t)

(use-package gh-md
  :ensure t)
