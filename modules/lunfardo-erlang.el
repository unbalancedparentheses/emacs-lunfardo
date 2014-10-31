(require 'lunfardo-programming)

(lunfardo-require-packages '(erlang))

(add-to-list 'auto-mode-alist '("\\.erl\\'" . erlang-mode))
(add-to-list 'auto-mode-alist '("\\.app.src\\'" . erlang-mode))

(setq erlang-indent-level 2)

(add-hook 'erlang-mode-hook #'aggressive-indent-mode)

(provide 'lunfardo-erlang)
