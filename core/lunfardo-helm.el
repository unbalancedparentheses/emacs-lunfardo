(lunfardo-require-packages '(helm
                             helm-ag
                             helm-dash
                             helm-descbinds
                             helm-flycheck
                             helm-projectile
                             helm-swoop))

(require 'helm)
(require 'helm-swoop)

(require 'helm-config)
(helm-mode 1)

;; If this value is t, split window inside the current window
(setq helm-swoop-split-with-multiple-windows nil)

;; Split direcion. 'split-window-vertically or 'split-window-horizontally
(setq helm-swoop-split-direction 'split-window-horizontally)

(setq helm-split-window-in-side-p           t
      helm-buffers-fuzzy-matching           t
      helm-move-to-line-cycle-in-source     t
      helm-ff-search-library-in-sexp        t
      helm-ff-file-name-history-use-recentf t)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)

(provide 'lunfardo-helm)
