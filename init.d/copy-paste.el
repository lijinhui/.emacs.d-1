(defun darwin-copy-paste () "Copy and paste for OS X" (interactive)
  (require 'pbcopy)
  (turn-on-pbcopy))

(defun linux-copy-paste () "Copy and paste for Linux" (interactive)
  (require 'xclip)
  (turn-on-xclip))

(if (string-equal system-type "darwin")
    (darwin-copy-paste))
(if (string-equal system-type "gnu/linux")
    (linux-copy-paste))


