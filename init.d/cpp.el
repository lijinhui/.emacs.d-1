;; Compile the active buffer using clang and C++11 standard
(defun compile-current-file ()
  "Compiles the currently active file"
  (interactive)
  (setq compile-command (format "%s %s" "g++ -std=c++11 " (buffer-name)))
  (compile compile-command))
