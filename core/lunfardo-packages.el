(require 'package)
(require 'cl)

(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; Guarantee all packages are installed on start
(defvar lunfardo-packages
  '(
    ace-jump-mode
    ace-window
    ack-and-a-half
    ag
    anzu
    buffer-move
    company
    dash
    diff-hl
    discover-my-major
    drag-stuff
    easy-kill
    erlang
    exec-path-from-shell
    expand-region
    flx-ido
    flycheck
    flycheck-color-mode-line
    git-timemachine
    github-browse-file
    guru-mode
    guru-mode
    helm
    helm-ag
    helm-dash
    helm-descbinds
    helm-flycheck
    helm-projectile
    helm-swoop
    hungry-delete
    ido-vertical-mode
    key-chord
    magit
    monokai-theme
    move-text
    multiple-cursors
    popwin
    powerline
    projectile
    quickrun
    rainbow-delimiters
    rainbow-mode
    restclient
    skewer-mode
    smartparens
    smex
    undo-tree
    use-package
    whitespace-cleanup-mode
    yascroll
    yasnippet
    yasnippet-bundle
    zenburn-theme
)
"List of packages needs to be installed at launch.")

(defun lunfardo-packages-installed-p ()
  "Check if all packages in `prelude-packages' are installed."
  (every #'package-installed-p lunfardo-packages))

(defun lunfardo-require-package (package)
  "Install PACKAGE unless already installed."
  (unless (memq package lunfardo-packages)
    (add-to-list 'lunfardo-packages package))
  (unless (package-installed-p package)
    (package-install package)))

(defun lunfardo-require-packages (packages)
  "Ensure PACKAGES are installed.
Missing packages are installed automatically."
  (mapc #'lunfardo-require-package packages))

(defun lunfardo-install-packages ()
  "Install all packages listed in `lunfardo-packages'."
  (unless (lunfardo-packages-installed-p)
    ;; check for new packages (package versions)
    (message "%s" "Emacs Lunfardo is now refreshing its package database...")
    (package-refresh-contents)
    (message "%s" " done.")
    ;; install the missing packages
    (lunfardo-require-packages lunfardo-packages)))

(lunfardo-install-packages)

(require 'use-package)

(provide 'lunfardo-packages)
