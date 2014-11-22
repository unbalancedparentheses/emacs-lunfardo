(defvar current-user
      (getenv
       (if (equal system-type 'windows-nt) "USERNAME" "USER")))

(message "Lunfardo is powering up... Be patient, Master %s!" current-user)

(defvar lunfardo-dir (file-name-directory load-file-name))
(defvar lunfardo-core-dir (expand-file-name "core" lunfardo-dir))
(defvar lunfardo-modules (expand-file-name "modules" lunfardo-dir))
(add-to-list 'load-path lunfardo-core-dir)
(add-to-list 'load-path lunfardo-modules)

(require 'lunfardo-packages)
(require 'lunfardo-core)
(require 'lunfardo-ui)
(require 'lunfardo-editor)
(require 'lunfardo-core)
(require 'lunfardo-ido)
(require 'lunfardo-helm)
(require 'lunfardo-yasnippet)
(require 'lunfardo-company)
(require 'lunfardo-evil)
(require 'lunfardo-modules)
(require 'lunfardo-bindings)

(when (eq system-type 'darwin)
  (require 'lunfardo-osx))

(toggle-frame-maximized)
