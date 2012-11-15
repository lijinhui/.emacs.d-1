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

(setq mac-option-modifier 'meta
      mac-command-modifier 'super
      x-select-enable-clipboard t)
