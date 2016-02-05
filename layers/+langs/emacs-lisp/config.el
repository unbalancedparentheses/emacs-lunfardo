(use-package emacs-lisp-mode
  :init
  (add-hook 'emacs-lisp-mode-hook #'(lambda ()
                                      (smartparens-mode))))
