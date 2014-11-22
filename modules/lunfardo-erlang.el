(require 'lunfardo-programming)

(lunfardo-require-packages '(erlang))

(add-to-list 'auto-mode-alist '("\\.erl\\'" . erlang-mode))
(add-to-list 'auto-mode-alist '("\\.app.src\\'" . erlang-mode))

(setq erlang-indent-level 2)

(defun lunfardo-erlang-defaults ()
  (lunfardo-prog-mode-defaults)
  (aggressive-indent-mode t))

(add-hook 'erlang-mode-hook 'lunfardo-erlang-defaults)

(provide 'lunfardo-erlang)
