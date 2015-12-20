(defun add-to-load-path (dir)
  (add-to-list 'load-path dir))

(mapc 'add-to-load-path
      (mapcar #'(lambda (dir)
                  (concat user-emacs-directory dir))
              '("core/" "modules/")
              ))

(provide 'core-path)
