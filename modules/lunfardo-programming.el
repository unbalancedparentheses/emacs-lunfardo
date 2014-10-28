;; yo, check my syntax
(global-flycheck-mode t)

(require 'flycheck-color-mode-line)
(eval-after-load "flycheck"
  '(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))

(defun lunfardo-prog-mode-defaults ()
  (rainbow-delimiters-mode t)
  )

(setq lunfardo-prog-mode-hook 'lunfardo-prog-mode-defaults)

(add-hook 'prog-mode-hook (lambda ()
                            (run-hooks 'lunfardo-prog-mode-hook)))

(provide 'lunfardo-programming)
