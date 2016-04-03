(use-package org-bullets
  :config
  (add-hook 'org-mode-hook (lambda ()
                           (org-bullets-mode 1)))
  :ensure t)

(use-package org-present
  :ensure t)
