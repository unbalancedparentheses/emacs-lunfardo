(cua-mode t)

(global-set-key [escape]               'keyboard-escape-quit)
(define-key mc/keymap [escape]         'multiple-cursors-mode)
(define-key company-mode-map [escape]  'company-abort)

(global-set-key (kbd "C-a")            'mark-whole-buffer)
(global-set-key (kbd "C-M-a")          'beginning-of-line)
(global-set-key (kbd "C-M-e")          'end-of-visual-line)

(global-set-key (kbd "C-o")            'ido-find-file)
(global-set-key [remap kill-ring-save] 'easy-kill)
(global-set-key (kbd "C-<tab>")        'switch-to-previous-buffer)
(global-set-key (kbd "C-q")            'kmacro-start-macro)
(global-set-key (kbd "C-S-q")          'kmacro-end-or-call-macro)
(global-set-key (kbd "C-S-t")          'reopen-killed-file)
(global-set-key (kbd "C-n")            'generate-buffer)

(global-set-key (kbd "C-S-z")          'undo-tree-redo)
(global-set-key (kbd "C-z")            'undo-tree-undo)
(global-set-key (kbd "C-<SPC>")        'company-complete)
(global-set-key (kbd "<S-return>")     'smart-open-line)

(global-set-key (kbd "C-+")            'text-scale-increase)
(global-set-key (kbd "C--")            'text-scale-decrease)

(global-set-key (kbd "C-f")            'helm-swoop)
(global-set-key (kbd "C-l")            'er/expand-region)

(global-set-key [(control shift p)]    'helm-M-x)
(global-set-key [(control p)]          'helm-buffers-list)
(global-set-key [(control r)]          'helm-semantic-or-imenu)

(global-set-key [(control g)]          'goto-line)
(global-set-key (kbd "C-M-p")          'helm-projectile)

(global-set-key (kbd "C-S-k")          'lunfardo-kill-whole-line)

(define-key undo-tree-map (kbd "C-/") nil)
(global-set-key (kbd "C-/")            'evilnc-comment-or-uncomment-lines)

(global-set-key (kbd "C-S-b")          'github-browse-file)
(global-set-key (kbd "C-S-f")          'helm-do-ag)
(global-set-key (kbd "C-S-g")          'helm-google-suggest)
(global-set-key (kbd "C-S-l")          'helm-descbinds)
(global-set-key (kbd "C-S-i")          'find-user-init-file)
(global-set-key (kbd "C-S-h")          'anzu-query-replace)
(global-set-key (kbd "C-M-v")          'helm-show-kill-ring)

(global-set-key (kbd "C-S-m")          'magit-status)
(global-set-key (kbd "C-S-u")          'undo-tree-visualize)

(global-set-key (kbd "C-.")            'ace-jump-word-mode)
(global-set-key (kbd "C-h f")          'helm-apropos)
(global-set-key (kbd "C-h r")          'helm-info-emacs)
(global-set-key (kbd "C-h C-l")        'helm-locate-library)

(global-set-key (kbd "<C-S-down>")     'move-text-down)
(global-set-key (kbd "<C-S-up>")       'move-text-up)
(global-set-key (kbd "C-d")            'mc/mark-next-like-this)
(global-set-key (kbd "C-s")            'save-buffer)
(global-set-key (kbd "C-w")            'kill-this-buffer)

(global-set-key (kbd "C-0")            'delete-window)
(global-set-key (kbd "C-1")            'delete-other-windows)
(global-set-key (kbd "C-2")            'split-window-horizontally)
(global-set-key (kbd "C-3")            'split-window-vertically)

(global-set-key (kbd "s-<mouse-1>")    'mc/add-cursor-on-click)

(provide 'lunfardo-keys)
