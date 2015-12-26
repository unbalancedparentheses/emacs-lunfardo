(load-file (concat user-emacs-directory "core/core-path.el"))
(require 'core-package)

(require 'core-osx)
(require 'core-defun)

(require 'core-defaults)

(require 'core-editor)
(require 'core-movement)

(require 'core-git)
(require 'core-flycheck)
(require 'core-autocompletion)

(require 'core-bindings)

(require 'core-ui)

(require 'core-layers)

(provide 'core-lunfardo)
