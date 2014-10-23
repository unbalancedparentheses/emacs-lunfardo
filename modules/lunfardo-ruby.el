(lunfardo-require-packages '(yari inf-ruby rubocop))

(add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.thor\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rabl\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Thorfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.jbuilder\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Podfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.podspec\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Puppetfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Berksfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Appraisals\\'" . ruby-mode))

(add-to-list 'completion-ignored-extensions ".rbc")

(define-key 'help-command "R" 'yari)

(add-hook 'ruby-mode-hook #'aggressive-indent-mode)

(eval-after-load 'ruby-mode
  '(progn
     (defun prelude-ruby-mode-hook ()
       (inf-ruby-minor-mode t)
       (ruby-tools-mode t)

     (add-hook 'ruby-mode-hook (lambda ()
                                 (run-hooks 'prelude-ruby-mode-hook))))
     )
  )

(provide 'lunfardo-ruby)
