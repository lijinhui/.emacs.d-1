(setq org-todo-keywords
      '((sequence "TODO(t)" "|" "DONE(d)")
        (sequence "FEATURE(f)" "|" "COMPLETED(c)")
        (sequence "BUG(b)" "|" "FIXED(x)")
        (sequence "|" "CANCELED(a)")))

(setq org-log-done 'time)
