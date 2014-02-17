(require 'ido)
(require 'flx-ido)
(require 'smex)

(smex-initialize)

(setq ido-enable-prefix nil
      ido-use-filename-at-point 'guess
      ido-max-prospects 10
      ido-default-file-method 'selected-window
      ido-auto-merge-work-directories-length -1)
(ido-ubiquitous-mode +1)

(ido-mode 1)
(ido-everywhere 1)
(ido-vertical-mode 1)
(flx-ido-mode 1)
(setq ido-use-faces nil)

(provide 'lunfardo-ido)
