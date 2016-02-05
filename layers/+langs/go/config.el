(use-package go-mode
  :config
  (add-hook 'before-save-hook 'gofmt-before-save)
  :ensure t)

(use-package company-go
  :ensure t)

(use-package go-test
  :ensure t)

(use-package go-projectile
  :init
  (require 'go-projectile)
  :ensure t)
