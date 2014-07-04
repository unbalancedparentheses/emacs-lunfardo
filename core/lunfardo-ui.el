(require 'cl)
(require 'powerline)

(blink-cursor-mode 0)
(setq initial-scratch-message "")
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message "pyotrgalois")

(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

(line-number-mode t)

(global-linum-mode 1)
(powerline-default-theme)
(global-rainbow-delimiters-mode 1)

(rainbow-mode 1)

(load-theme 'zenburn t)

(provide 'lunfardo-ui)
