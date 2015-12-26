(defun lunfardo/load-layers ()
  (mapc 'load-file
        (f--files (concat user-emacs-directory "layers")
                  (s-ends-with?  "config.el" it)
                  t)))

(lunfardo/load-layers)

(provide 'core-layers)
