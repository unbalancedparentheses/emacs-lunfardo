(require 'key-chord)

(key-chord-define-global "yy" 'browse-kill-ring)
(key-chord-define-global "FF" 'find-file)

(key-chord-mode +1)

(provide 'lunfardo-keychords)
