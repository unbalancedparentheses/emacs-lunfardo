(defvar current-user
      (getenv
       (if (equal system-type 'windows-nt) "USERNAME" "USER")))

(message "Lunfardo is powering up... Be patient, Master %s!" current-user)

(defvar lunfardo-dir (file-name-directory load-file-name))
(defvar lunfardo-core-dir (expand-file-name "core" lunfardo-dir))
(add-to-list 'load-path lunfardo-core-dir)

(require 'lunfardo-packages)
(require 'lunfardo-ui)
(require 'lunfardo-keychords)
(require 'lunfardo-ido)

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))
