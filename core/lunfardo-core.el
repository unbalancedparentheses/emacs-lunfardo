(defun switch-to-previous-buffer ()
  "Switch to previously open buffer.
Repeated invocations toggle between the two most recently open buffers."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

;; insert an empty line after the current line.
;; iosition the cursor at its beginning, according to the current mode."
(defun smart-open-line ()
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))

(provide 'lunfardo-core)
