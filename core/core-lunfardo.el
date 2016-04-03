(load-file (concat user-emacs-directory "core/core-path.el"))
(require 'core-package)

(when (eq system-type 'darwin)
  (require 'core-osx))

(require 'core-defun)

(require 'core-defaults)

(require 'core-editor)
(require 'core-movement)

(require 'core-git)
(require 'core-flycheck)
(require 'core-autocompletion)

(require 'core-bindings)

(require 'core-ui)
(require 'core-diminish)

(require 'core-vim)

(require 'core-layers)

(provide 'core-lunfardo)
