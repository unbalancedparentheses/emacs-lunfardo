(use-package avy
  :bind
  ("C-c j" . avy-goto-word-or-subword-1)
  ("s-." . avy-goto-word-or-subword-1)
  :ensure t)

(use-package expand-region
  :bind
  ("C-l" . er/expand-region)
  :ensure t)

(use-package multiple-cursors
  :bind
  (("s-d" . mc/mark-next-like-this)
   ("s-D" . mc/mark-previous-like-this)
   ("s-L" . mc/edit-lines)
   )
  :ensure t)

(provide 'core-movement)
