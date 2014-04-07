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
    browse-kill-ring
    buffer-move
    elixir-mode
    elpy
    erlang
    exec-path-from-shell
    expand-region
    flx-ido
    flycheck
    helm
    helm-projectile
    helm-spotify
    highlight-indentation
    highlight-indentation
    highlight-symbol
    httprepl
    ido-vertical-mode
    jade-mode
    jedi
    js2-mode
    json-mode
    key-chord
    move-text
    multiple-cursors
    powerline
    project-explorer
    projectile
    python-mode
    rainbow-delimiters
    rainbow-mode
    restclient
    robe
    rvm
    simple-httpd
    skewer-mode
    smartparens
    smex
    solarized-theme
    undo-tree
    volatile-highlights
    web-mode
    whitespace-cleanup-mode
    whole-line-or-region
    yasnippet
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
