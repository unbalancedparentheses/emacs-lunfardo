(use-package diff-hl
  :config
  (global-diff-hl-mode t)
  :ensure t)

(use-package magit
  :ensure t)

(use-package magit-gh-pulls
  :init
  (require 'magit-gh-pulls)
  (add-hook 'magit-mode-hook 'turn-on-magit-gh-pulls)
  :ensure t)

(use-package git-timemachine
  :ensure t)

(provide 'core-git)
