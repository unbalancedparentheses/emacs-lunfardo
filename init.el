(blink-cursor-mode 0)
(setq initial-scratch-message "")
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message "pyotrgalois")

(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

(add-to-list 'load-path user-emacs-directory)
(require 'setup-package)

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(require 'ido)
(ido-mode 1)
(ido-everywhere 1)
(ido-vertical-mode 1)
(require 'flx-ido)
(flx-ido-mode 1)
(setq ido-use-faces nil)

(projectile-global-mode)
(ido-vertical-mode 1)
(global-linum-mode 1)
(powerline-default-theme)
(global-rainbow-delimiters-mode 1)
(global-auto-complete-mode 1)
(global-whitespace-cleanup-mode 1)

(require 'erlang-brew)
(require 'multiple-cursors)
(require 'expand-region)

(require 'sane-defaults)
(require 'key-bindings)
(require 'key-chord-slang)

(load-theme 'solarized-light)
