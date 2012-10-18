;; Define function to insert binding.pry expression
(defun insert-pry-expression()
  "Insert require 'pry'; binding.pry at cursor point"
  (interactive)
  (insert "require 'pry'; binding.pry")
)
