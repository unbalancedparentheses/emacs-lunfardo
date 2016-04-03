(use-package company
  :init
  (global-company-mode)
  :config
  (defun company-complete-common-or-cycle-backward ()
    (interactive)
    (company-complete-common-or-cycle -1))
  (setq company-idle-delay 0.1
        company-minimum-prefix-length 3
        company-show-numbers t
        company-tooltip-limit 10
        company-selection-wrap-around t
        company-tooltip-flip-when-above t
        company-echo-delay 0
        company-tooltip-align-annotations t)

  (define-key company-active-map (kbd "TAB") 'company-complete-selection)
  (define-key company-active-map (kbd "<tab>") 'company-complete-selection)
  (define-key company-active-map (kbd "TAB") 'company-complete-common-or-cycle)
  (define-key company-active-map (kbd "<tab>") 'company-complete-common-or-cycle)
  (define-key company-active-map (kbd "<S-tab>") 'company-complete-common-or-cycle-backward)
  (define-key company-active-map (kbd "<backtab>") 'company-complete-common-or-cycle-backward)
  (global-set-key "\t" 'company-indent-or-complete-common)
  :ensure t)

;; adds fuzzy matching to company powered by flx
(use-package company-flx
  :init (company-flx-mode +1)
  :ensure t)

;; sort completion candidates by previous completion choices
(use-package company-statistics
  :init
  (company-statistics-mode)
  :ensure t)

(use-package yasnippet
  :init
  (yas-global-mode t)
  :config
  (global-set-key  (kbd "<C-tab>") 'yas/insert-snippet)
  :ensure t)

(provide 'core-autocompletion)
