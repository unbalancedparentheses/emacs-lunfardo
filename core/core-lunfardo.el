(require 'core-package)

(require 'core-osx)
(require 'core-defun)

(require 'core-defaults)

(require 'core-editor)
(require 'core-movement)

(require 'core-git)
(require 'core-flycheck)
(require 'core-helm)
(require 'core-autocompletion)

(require 'core-bindings)

(require 'core-ui)

;; IRC
(use-package circe
  :config
  (setq circe-network-options
        '(("Freenode"
           :tls t
           :nick "unbalancedparen"
           :sasl-username "unbalancedparen"
           :sasl-password ""
           :channels ("#erlang" "#clojure")
           )))
  :ensure t)

;; languages
(use-package erlang
  :init
  (add-hook 'erlang-mode-hook (lambda () (run-hooks 'prog-mode-hook)))
  (add-hook 'erlang-mode-hook 'flycheck-mode)
  :mode
  ("\\.erl\\'" . erlang-mode)
  ("\\.hrl\\'" . erlang-mode)
  :ensure t)

(use-package web-mode
  :config
  (setq web-mode-enable-auto-pairing nil)
  :mode
  (("\\.phtml\\'" . web-mode)
   ("\\.tpl\\.php\\'" . web-mode)
   ("\\.[agj]sp\\'" . web-mode)
   ("\\.as[cp]x\\'" . web-mode)
   ("\\.erb\\'" . web-mode)
   ("\\.mustache\\'" . web-mode)
   ("\\.djhtml\\'" . web-mode)
   ("\\.html?\\'" . web-mode))
  :ensure t)

(provide 'core-lunfardo)
