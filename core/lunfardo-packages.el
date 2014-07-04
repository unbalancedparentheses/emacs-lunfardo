(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(require 'cl)
;; Guarantee all packages are installed on start
(defvar packages-list
  '(
    ace-jump-mode
    ag
    auto-complete
    elixir-mode
    elpy
    erlang
    exec-path-from-shell
    expand-region
    flx-ido
    flycheck
    helm
    helm-projectile
    ido-vertical-mode
    jade-mode
    jedi
    js2-mode
    json-mode
    key-chord
    less-css-mode
    magit
    markdown-mode
    move-text
    multiple-cursors
    powerline
    projectile
    projectile-rails
    python-mode
    rainbow-delimiters
    rainbow-mode
    rinari
    robe
    ruby-tools
    rvm
    skewer-mode
    smartparens
    smex
    solarized-theme
    zenburn-theme
    undo-tree
    web-mode
    whitespace-cleanup-mode
    yari
)
"List of packages needs to be installed at launch")

(defun has-package-not-installed ()
  (loop for p in packages-list
        when (not (package-installed-p p)) do (return t)
        finally (return nil)))
(when (has-package-not-installed)
  ;; Check for new packages (package versions)
  (message "%s" "Get latest versions of all packages...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; Install the missing packages
  (dolist (p packages-list)
    (when (not (package-installed-p p))
      (package-install p))))

(provide 'lunfardo-packages)
