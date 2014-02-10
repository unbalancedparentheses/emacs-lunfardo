(setq load-path (cons  "/usr/local/Cellar/erlang/R16B03/lib/erlang/lib/tools-2.6.13/emacs"
      load-path))
      (setq erlang-root-dir "/usr/local/Cellar/erlang/R16B03/lib/erlang")
      (setq exec-path (cons "/usr/local/Cellar/erlang/R16B03/lib/erlang/bin" exec-path))
      (require 'erlang-start)

(provide 'erlang-brew)
