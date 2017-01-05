(use-package company-erlang
  :ensure t)

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
  (setq flycheck-erlang-include-path '("../include" "../deps"))

  (require 'ivy-erlang-complete)

  (defun fix-erlang-project-includes (project-root)
    "Find erlang include paths for PROJECT-ROOT with project deps."
    (setq-local flycheck-erlang-include-path
                (append
                 (s-split
                  "\n"
                  (shell-command-to-string
                   (concat "find "
                           project-root
                           "/*"
                           " -type d -name include"))
                  t)
                 (list project-root
                       (concat project-root "/include")
                       (concat project-root "/deps")
                       default-directory
                       (concat
                        (locate-dominating-file
                         default-directory
                         "src") "include")
                       (concat
                        (locate-dominating-file
                         default-directory
                         "src") "deps")))))

  (defun fix-erlang-project-code-path (project-root)
    "Find erlang include paths for PROJECT-ROOT with project deps."
    (let ((code-path
           (split-string (shell-command-to-string
                          (concat "find " project-root " -type d -name ebin")))
           ))
      (setq-local flycheck-erlang-library-path code-path)))

  (defun setup-ivy-erlang-complete ()
  "Setup for erlang."
  (let ((project-root (ivy-erlang-complete-autosetup-project-root)))
      (fix-erlang-project-code-path project-root)
      (fix-erlang-project-includes project-root))
  (ivy-erlang-complete-init))

  (add-hook 'erlang-mode-hook 'add-pretty-lambda)
  (add-hook 'erlang-mode-hook (lambda () (run-hooks 'prog-mode-hook)))
  (add-hook 'erlang-mode-hook 'flycheck-mode)
  (add-hook 'erlang-mode-hook #'setup-ivy-erlang-complete)
  (add-hook 'erlang-mode-hook #'company-erlang-init)

  :mode
  ("\\.erl\\'" . erlang-mode)
  ("\\.hrl\\'" . erlang-mode)
  :ensure t)
