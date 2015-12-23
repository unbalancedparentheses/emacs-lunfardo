;; always load newest byte code
(setq load-prefer-newer t)

(load-file (concat user-emacs-directory "core/core-path.el"))
(require 'core-lunfardo)
