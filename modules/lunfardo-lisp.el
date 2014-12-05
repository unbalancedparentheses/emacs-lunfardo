(lunfardo-require-packages '(lispy))

(require 'lunfardo-programming)

;; a great lisp coding hook
(defun lunfardo-lisp-coding-defaults ()
  (aggressive-indent-mode t))

(add-hook 'emacs-lisp-mode-hook 'lunfardo-lisp-coding-defaults)

(provide 'lunfardo-lisp)
