(defun run-cukes () "Run Cucumber" (interactive)
  (shell-command "tmux send-keys -t 0:4.3 'zc' Enter"))
