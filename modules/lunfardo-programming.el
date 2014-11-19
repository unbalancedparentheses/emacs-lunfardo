;; yo, check my syntax
;; whitespace-mode config
(require 'whitespace)
(setq whitespace-line-column 90) ;; limit line length
(setq whitespace-style '(face tabs empty trailing lines-tail))

(require 'flycheck-color-mode-line)
(eval-after-load "flycheck"
  '(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))

(defun lunfardo-prog-mode-defaults ()
  (rainbow-delimiters-mode t)
  (flycheck-mode t)
  (whitespace-mode t)
  (auto-highlight-symbol-mode t)
  )

(setq lunfardo-prog-mode-hook 'lunfardo-prog-mode-defaults)

(add-hook 'prog-mode-hook (lambda ()
                            (run-hooks 'lunfardo-prog-mode-hook)))

(provide 'lunfardo-programming)
