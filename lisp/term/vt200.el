;;; vt200.el  -*- lexical-binding:t -*-

;; For our purposes we can treat the vt200 and vt100 almost alike.
;; Most differences are handled by the termcap entry.
(defun terminal-init-vt200 ()
  "Terminal initialization function for vt200."
  (tty-run-terminal-initialization (selected-frame) "vt100")
  ;; Make F11 an escape key.
  (define-key input-decode-map "\e[23~" [f11]) ;Probably redundant.
  (define-key local-function-key-map [f11] [?\e]))

(provide 'term/vt200)

;;; vt200.el ends here
