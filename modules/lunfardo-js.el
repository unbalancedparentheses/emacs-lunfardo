(lunfardo-require-packages '(js2-mode json-mode skewer-mode simple-httpd))

(require 'js2-mode)

(setq js2-highlight-level 3)

(add-to-list 'auto-mode-alist '("\\.js\\'"    . js2-mode))
(add-to-list 'auto-mode-alist '("\\.pac\\'"   . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

(add-hook 'js2-mode-hook 'skewer-mode)
(add-hook 'css-mode-hook 'skewer-css-mode)
(add-hook 'html-mode-hook 'skewer-html-mode)

(eval-after-load 'js2-mode
  '(progn
     (defun lunfardo-js-mode-defaults ()
       ;; electric-layout-mode doesn't play nice with smartparens
       (setq-local electric-layout-rules '((?\; . after)))
       (setq mode-name "JS2")
       (js2-imenu-extras-mode +1))

     (setq lunfardo-js-mode-hook 'lunfardo-js-mode-defaults)

     (add-hook 'js2-mode-hook (lambda () (run-hooks 'lunfardo-js-mode-hook)))))

(provide 'lunfardo-js)
