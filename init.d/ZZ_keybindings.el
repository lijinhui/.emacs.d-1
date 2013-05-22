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
(define-key global-map (kbd "<f12>") 'comment-or-uncomment-region-or-line)

;; Toggle fullscreen
(defun toggle-fullscreen ()
  (interactive)
  (set-frame-parameter nil 'fullscreen (if (frame-parameter nil 'fullscreen)
                                           nil
                                           'fullboth)))
(define-key global-map (kbd "<f11>") 'toggle-fullscreen)

;; Disable C-t for textmate mode and rebind to projectile file file
(define-key global-map (kbd "C-t") 'projectile-find-file)

(define-key global-map (kbd "C-S-t") 'custom-goto-symbol)
(define-key global-map (kbd "C-x g") 'magit-status)
(define-key global-map (kbd "C-x O") 'other-frame)

;; RUN CUKES
(define-key global-map (kbd "C-c C-c") 'run-cukes)
