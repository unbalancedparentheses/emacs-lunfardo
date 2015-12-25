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
