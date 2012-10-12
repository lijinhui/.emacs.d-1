;; Add more todo keywords to ORG mode
(setq org-todo-keywords
      '((sequence "TODO(t)" "|" "DONE(d)")
        (sequence "FEATURE(f)" "|" "COMPLETED(c)")
        (sequence "BUG(b)" "|" "FIXED(x)")
        (sequence "|" "CANCELED(a)")))

;; Timestamp items when completed
(setq org-log-done 'time)
