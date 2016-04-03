(use-package ranger
  :init
  (setq ranger-override-dired t
        ranger-cleanup-eagerly t
        ranger-dont-show-binary t)
  :ensure t)
