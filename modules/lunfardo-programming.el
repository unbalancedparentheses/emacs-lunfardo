;; yo, check my syntax
(lunfardo-require-packages '(flycheck
                             flycheck-color-mode-line
                             flycheck-pos-tip
                             ))

(require 'flycheck-color-mode-line)
(eval-after-load "flycheck"
  '(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))

(eval-after-load 'flycheck
  '(custom-set-variables
    '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))

(defun lunfardo-prog-defaults ()
  (rainbow-delimiters-mode t)
  (flycheck-mode t)
  (whitespace-mode t)
  (highlight-symbol-mode t)
  (smartparens-mode t))

(add-hook 'prog-mode-hook 'lunfardo-prog-defaults)

(provide 'lunfardo-programming)
