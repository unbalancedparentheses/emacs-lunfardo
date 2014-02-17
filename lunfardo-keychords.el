(require 'key-chord)

(key-chord-define-global "jj" 'ace-jump-word-mode)
(key-chord-define-global "jl" 'ace-jump-line-mode)
(key-chord-define-global "jk" 'ace-jump-char-mode)
(key-chord-define-global "uu" 'undo-tree-visualize)
(key-chord-define-global "yy" 'browse-kill-ring)
(key-chord-define-global "FF" 'find-file)

(key-chord-mode +1)

(provide 'lunfardo-keychords)
