(use-package erlang
  :init
  (defun add-pretty-lambda ()
    "make some word or string show as pretty Unicode symbols"
    (setq prettify-symbols-alist
          '(
            ("fun" . 955) ; λ
            ("->" . 8594) ; →
            ("=>" . 8658) ; ⇒
            )))
  (add-hook 'erlang-mode-hook 'add-pretty-lambda)
  (add-hook 'erlang-mode-hook (lambda () (run-hooks 'prog-mode-hook)))
  (add-hook 'erlang-mode-hook 'flycheck-mode)
  :mode
  ("\\.erl\\'" . erlang-mode)
  ("\\.hrl\\'" . erlang-mode)
  :ensure t)
