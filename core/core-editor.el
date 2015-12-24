;; cleanup whitespace on save
(use-package whitespace-cleanup-mode
  :init
  (global-whitespace-cleanup-mode t)
  :ensure t)

;; auto save on lost focus
(add-hook 'focus-out-hook (lambda () (save-some-buffers t)))

(use-package highlight-symbol
  :init
  (add-hook 'prog-mode-hook 'highlight-symbol-mode)
  :ensure t)

(use-package smartparens
  :init
  (smartparens-global-mode t)
  :ensure t)

;; highlighting portions relating to the operations.
(use-package volatile-highlights
  :if (display-graphic-p)
  :init
  (require 'volatile-highlights)
  (volatile-highlights-mode t)
  :ensure t)

(use-package aggressive-indent
  :init
  (global-aggressive-indent-mode 1)
  :ensure t)

(use-package undo-tree
  :init (undo-tree-mode t)
  :bind (("s-z" . undo-tree-undo)
         ("s-Z" . undo-tree-redo)
         ("s-u" . undo-tree-visualize))
  :ensure t)

(use-package hungry-delete
  :init (global-hungry-delete-mode t)
  :ensure t)

(use-package anzu
  :init
  (global-anzu-mode +1)
  :bind
  (("s-h" . anzu-query-replace))
  :ensure t)

(use-package evil-nerd-commenter
  :bind ("s-/" . evilnc-comment-or-uncomment-lines)
  :ensure t)

(use-package counsel
  :bind
  (("M-x" . counsel-M-x)
   ("C-x C-f" . counsel-find-file)
   ("s-o" . counsel-find-file)
   ("C-c C-f" . counsel-git)
   ("s-O" . counsel-git)
   ("C-c f" . counsel-describe-function)
   ("C-c g" . counsel-git-grep)
   ("C-c a" . counsel-ag)
   ("C-S" . counsel-ag))
  :ensure t)

(use-package flx
  :ensure t)

(use-package swiper
  :init
  (ivy-mode 1)
  :config
  (setq ivy-use-virtual-buffers t)
  (setq ivy-wrap t)
  :bind
  (("C-s" . swiper)
   ("C-x b" . ivy-switch-buffer))
  :ensure t)

(use-package ivy
  :config
  (ivy-mode 1)
  ;; show recently killed buffers when calling `ivy-switch-buffer'
  (setq ivy-use-virtual-buffers t)
  (setq ivy-re-builders-alist '((t . ivy--regex-plus))) ; default
  ;; (setq ivy-re-builders-alist '((t . ivy--regex-fuzzy)))
  (defun ivy-imenu-get-candidates-from (alist  &optional prefix)
    (cl-loop for elm in alist
             nconc (if (imenu--subalist-p elm)
                       (ivy-imenu-get-candidates-from
                        (cl-loop for (e . v) in (cdr elm) collect
                                 (cons e (if (integerp v) (copy-marker v) v)))
                        (concat prefix (if prefix ".") (car elm)))
                     (and (cdr elm) ; bug in imenu, should not be needed.
                          (setcdr elm (copy-marker (cdr elm))) ; Same as [1].
                          (list (cons (concat prefix (if prefix ".") (car elm))
                                      (copy-marker (cdr elm))))))))

  (defun ivy-imenu-goto ()
    "Go to buffer position"
    (interactive)
    (let ((imenu-auto-rescan t) items)
      (unless (featurep 'imenu)
        (require 'imenu nil t))
      (setq items (imenu--make-index-alist t))
      (ivy-read "imenu items:"
                (ivy-imenu-get-candidates-from (delete (assoc "*Rescan*" items) items))
                :action (lambda (k) (goto-char k))))))

(provide 'core-editor)
