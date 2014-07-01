(defvar current-user
      (getenv
       (if (equal system-type 'windows-nt) "USERNAME" "USER")))

(message "Lunfardo is powering up... Be patient, Master %s!" current-user)

(defvar lunfardo-dir (file-name-directory load-file-name))
(defvar lunfardo-core-dir (expand-file-name "core" lunfardo-dir))

(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path lunfardo-core-dir)

(require 'lunfardo-packages)

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(require 'sane-defaults)
(require 'lunfardo-ui)

(require 'lunfardo-ido)
(require 'multiple-cursors)
(require 'expand-region)
(require 'key-bindings)
(require 'lunfardo-keychords)

(require 'erlang-brew)

(smartparens-global-mode 1)
(projectile-global-mode)
(global-auto-complete-mode 1)
(global-whitespace-cleanup-mode 1)
(helm-mode 1)
(global-hl-line-mode 1)
(global-visual-line-mode 1)
