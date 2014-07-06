;; debug on error
(setq debug-on-error t)

(defvar current-user
      (getenv
       (if (equal system-type 'windows-nt) "USERNAME" "USER")))

(message "Lunfardo is powering up... Be patient, Master %s!" current-user)

(defvar lunfardo-dir (file-name-directory load-file-name))
(defvar lunfardo-core-dir (expand-file-name "core" lunfardo-dir))
(add-to-list 'load-path lunfardo-core-dir)

(require 'lunfardo-packages)
(require 'lunfardo-ui)
(require 'lunfardo-editor)
(require 'lunfardo-core)
(require 'lunfardo-bindings)
(require 'lunfardo-keychords)
(require 'lunfardo-ido)

(when (eq system-type 'darwin)
  (require 'lunfardo-osx))
