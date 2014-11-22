(require 'lunfardo-programming)

;; a great lisp coding hook
(defun lunfardo-lisp-coding-defaults ()
  (smartparens-strict-mode t)
  (lispy-mode t)
  (aggressive-indent-mode t))

(add-hook 'emacs-lisp-mode-hook 'lunfardo-lisp-coding-defaults)

(provide 'lunfardo-lisp)
