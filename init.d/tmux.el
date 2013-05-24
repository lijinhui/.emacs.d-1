(setq tmux-session-name 0)
(setq tmux-window-name 1)
(setq tmux-pane-name 1)

(defun tmux-exec (command)
  "Execute command in tmux pane"
  (interactive)
  (shell-command
   (format "tmux send-keys -t %s:%s.%s '%s' Enter" tmux-session-name tmux-window-name tmux-pane-name command)))

(defun tmux-setup (x y z)
  "Setup global variables for tmux session, window, and pane"
  (interactive "sEnter tmux session name: \nsEnter tmux window name: \nsEnter tmux pane number: ")
  (setq tmux-session-name x)
  (setq tmux-window-name y)
  (setq tmux-pane-name z)
  (message "Tmux Setup, session name: %s, window name: %s, pane number: %s" tmux-session-name tmux-window-name tmux-pane-name))

(defun tmux-current-file ()
  "Test to just get the current buffer file path"
  (interactive)
  (message "Current buffer: %s" buffer-file-name))

(defun tmux-current-line ()
  "Test to just get the current cursor position"
  (interactive)
  (message "Current cursor pos: %s" (line-number-at-pos)))


(defun zcukes () "Run Cucumber under Zeus" (interactive)
  (tmux-exec "zeus cucumber"))

(defun zcukes-current-buffer ()
  "Run Cucumber under Zeus on active buffer"
  (interactive)
  (tmux-exec (format "zeus cucumber %s" buffer-file-name)))

(defun zcukes-current-buffer-and-line ()
  "Run Cucumber under Zeus on the active buffer at current line"
  (interactive)
  (tmux-exec (format "zeus cucumber %s:%s" buffer-file-name (line-number-at-pos))))

(defun zroutes () "Run rake routes under Zeus" (interactive)
  (tmux-exec "zeus rake routes"))
