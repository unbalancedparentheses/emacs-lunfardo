(require 'helm)
(require 'helm-swoop)

(require 'helm-config)
(helm-mode 1)

;; If this value is t, split window inside the current window
(setq helm-swoop-split-with-multiple-windows nil)

;; Split direcion. 'split-window-vertically or 'split-window-horizontally
(setq helm-swoop-split-direction 'split-window-horizontally)

(provide 'lunfardo-helm)
