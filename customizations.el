(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-tab-width 2)
 '(column-number-mode t)
 '(cua-enable-cua-keys nil)
 '(cua-mode t nil (cua-base))
 '(cua-remap-control-z t)
 '(custom-safe-themes (quote ("b7553781f4a831d5af6545f7a5967eb002c8daeee688c5cbf33bf27936ec18b3" "965234e8069974a8b8c83e865e331e4f53ab9e74" default)))
 '(fill-column 80)
 '(fringe-mode (quote (nil . 0)) nil (fringe))
 '(global-linum-mode t)
 '(global-visual-line-mode t)
 '(ido-enable-flex-matching t)
 '(ido-mode (quote both) nil (ido))
 '(ido-use-filename-at-point (quote guess))
 '(ido-use-url-at-point t)
 '(indent-tabs-mode nil)
 '(js-indent-level 2)
 '(left-fringe-width 3 t)
 '(mark-even-if-inactive nil)
 '(markdown-command "redcarpet --parse-fenced_code_blocks")
 '(multi-term-dedicated-select-after-open-p t)
 '(multi-term-dedicated-window-height 20)
 '(multi-term-scroll-to-bottom-on-output t)
 '(org-babel-load-languages (quote ((emacs-lisp . t) (ruby . t) (sh . t) (awk . t) (java . t) (clojure . t) (latex . t) (C . t))))
 '(org-confirm-babel-evaluate nil)
 '(org-emphasis-alist (quote (("*" bold "<strong>" "</strong>") ("/" italic "<em>" "</em>") ("_" underline "<span style=\"text-decoration:underline;\">" "</span>") ("=" org-code "<code>" "</code>" verbatim) ("~" org-verbatim "<code>" "</code>" verbatim) ("+" (:strike-through t) "<del>" "</del>"))))
 '(org-export-htmlize-output-type (quote css))
 '(org-export-htmlized-org-css-url nil)
 '(org-log-done (quote note))
 '(org-replace-disputed-keys t)
 '(org2blog/wp-default-categories (quote ("Uncategorized")))
 '(ruby-deep-arglist nil)
 '(safe-local-variable-values (quote ((org-table-formula-evaluate-inline) (org-export-latex-listings . minted) (org-latex-to-pdf-process "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f" "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f" "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f") (org-export-latex-minted-langs (html "rhtml") (emacs-lisp "common-lisp") (cc "c++") (cperl "perl") (shell-script "bash") (caml "ocaml")) (org-latex-to-pdf-process quote ("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f" "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f" "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f")) (org-export-latex-minted-langs quote ((html "rhtml") (emacs-lisp "common-lisp") (cc "c++") (cperl "perl") (shell-script "bash") (caml "ocaml"))) (org-export-latex-minted . t) (org-export-latex-listings quote minted) (ruby-compilation-executable . "ruby") (ruby-compilation-executable . "ruby1.8") (ruby-compilation-executable . "ruby1.9") (ruby-compilation-executable . "rbx") (ruby-compilation-executable . "jruby"))))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tags-revert-without-query t)
 '(term-unbind-key-list (quote ("C-z" "C-x" "C-h" "C-y" "<ESC>")))
 '(tool-bar-mode nil)
 '(whitespace-style (quote (face tabs trailing space-before-tab indentation empty space-after-tab tab-mark))))


(set-default-font "DejaVu Sans Mono-08") ;; Set default font
;; (set-frame-parameter (selected-frame) 'alpha '(95 90))
;; (color-theme-gruber-darker)
;; (color-theme-sanityinc-tomorrow-night)
;; (set-default-font "Inconsolata-09")
(menu-bar-mode 0)

(setq make-backup-files        nil) ;; Don't want any backup files
(setq auto-save-list-file-name nil) ;; Don't want any .saves files
(setq auto-save-default        nil) ;; Don't want any auto saving

(setq search-highlight            t) ;; Highlight search object
(setq query-replace-highlight     t) ;; Highlight query object
(setq mouse-sel-retain-highlight  t) ;; Keep mouse highlighting
