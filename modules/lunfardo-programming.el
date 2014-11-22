;; yo, check my syntax

(require 'flycheck-color-mode-line)
(eval-after-load "flycheck"
  '(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))

(defun lunfardo-prog-mode-defaults ()
  (rainbow-delimiters-mode t)
  (flycheck-mode t)
  (whitespace-mode t)
  (highlight-symbol-mode t)
  (smartparens-mode t))

(add-hook 'prog-mode-hook 'lunfardo-prog-mode-defaults)

(provide 'lunfardo-programming)
