;; Set backup directory in .emacs.d directory
(setq backup-directory-alist
      (list (cons "." (expand-file-name "backup" user-emacs-directory))))
