(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector (vector "#4d4d4c" "#c82829" "#718c00" "#eab700" "#4271ae" "#8959a8" "#3e999f" "#ffffff"))
 '(coffee-tab-width 2)
 '(column-number-mode t)
 '(cua-enable-cua-keys nil)
 '(cua-mode t nil (cua-base))
 '(cua-remap-control-z t)
 '(custom-enabled-themes (quote (sanityinc-tomorrow-night)))
 '(custom-safe-themes (quote ("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "b7553781f4a831d5af6545f7a5967eb002c8daeee688c5cbf33bf27936ec18b3" "965234e8069974a8b8c83e865e331e4f53ab9e74" default)))
 '(fci-rule-color "#efefef")
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
 '(org-log-done (quote note) t)
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



(set-default-font "Ubuntu Mono for Powerline-09")
(add-to-list 'default-frame-alist '(font . "Ubuntu Mono for Powerline-09"))
;; (set-frame-parameter (selected-frame) 'alpha '(95 90))
;; (color-theme-gruber-darker)
;; (color-theme-sanityinc-tomorrow-night)
;; (set-default-font "Inconsolata-09")
(color-theme-sanityinc-tomorrow-day)
(menu-bar-mode 0)

(setq make-backup-files        nil) ;; Don't want any backup files
(setq auto-save-list-file-name nil) ;; Don't want any .saves files
(setq auto-save-default        nil) ;; Don't want any auto saving

(setq search-highlight            t) ;; Highlight search object
(setq query-replace-highlight     t) ;; Highlight query object
(setq mouse-sel-retain-highlight  t) ;; Keep mouse highlighting

(setq default-frame-alist
      (append default-frame-alist
              '((foreground-color . "Black")
                (background-color . "White")
                (cursor-color . "SkyBlue")
                )))
