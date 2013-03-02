;; Unset key bindings
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-x C-z"))

;; Font size
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; Align your code in a pretty way.
(global-set-key (kbd "C-x \\") 'align-regexp)

;; Textmate mode binding
(define-key global-map (kbd "M-t") 'textmate-goto-file)
(define-key global-map (kbd "M-T") 'textmate-goto-symbol)

;; Toggle comment
(define-key global-map (kbd "s-/") 'comment-or-uncomment-region-or-line)

;; Toggle fullscreen
(defun toggle-fullscreen ()
  (interactive)
  (set-frame-parameter nil 'fullscreen (if (frame-parameter nil 'fullscreen)
                                           nil
                                           'fullboth)))
(define-key global-map ("<f11>") 'toggle-fullscreen)

;; Toggle NS fullscreen
(define-key global-map (kbd "<C-S-f12>") 'ns-toggle-fullscreen)
