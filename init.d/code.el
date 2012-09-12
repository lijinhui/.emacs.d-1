;; Show whitespace
(add-hook 'abg-code-modes-hook
	  (lambda () (whitespace-mode 1)))

;; Clean up whitespace on save
(add-hook 'abg-code-modes-hook
          (lambda ()
            (add-hook 'before-save-hook 'whitespace-cleanup nil t)))
