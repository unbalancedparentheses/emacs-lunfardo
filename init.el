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

(load-theme 'solarized-light)

(require 'sane-defaults)
(require 'key-bindings)

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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
