;; Define function to insert binding.pry expression
(defun insert-pry-expression()
  "Insert require 'pry'; binding.pry at cursor point"
  (interactive)
  (insert "require 'pry'; binding.pry")
)

(setq ruby-insert-encoding-magic-comment nil)

(setq auto-mode-alist (cons '("\\Rakefile" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\Gemfile" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\Guardfile" . ruby-mode) auto-mode-alist))
