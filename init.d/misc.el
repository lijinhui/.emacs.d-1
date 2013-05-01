;; Add the ability to copy and cut the current line without marking it
(defadvice kill-ring-save (before slick-copy activate compile)
  "When called interactively with no active region, copy a single line instead."
  (interactive
   (if mark-active (list (region-beginning) (region-end))
     (message "Copied line")
     (list (line-beginning-position)
           (line-beginning-position 2)))))

(defadvice kill-region (before slick-cut activate compile)
  "When called interactively with no active region, kill a single line instead."
  (interactive
   (if mark-active (list (region-beginning) (region-end))
     (list (line-beginning-position)
           (line-beginning-position 2)))))

;; show-paren-mode: subtle highlighting of matching parens (global-mode)
(show-paren-mode +1)
(setq show-paren-style 'parenthesis)

;; highlight the current line
(global-hl-line-mode +1)

;; auto-completion in minibuffer
(icomplete-mode +1)

;; Switch to *scratch* buffer on startup
(setq inhibit-startup-screen t)

;; Hack zap-to-char to zap-up-to-char leaving the given CHAR
(defadvice zap-to-char (after my-zap-to-char-advice (arg char) activate)
  "Kill up to the ARG'th occurence of CHAR, and leave CHAR. If
  you are deleting forward, the CHAR is replaced and the point is
  put before CHAR"
  (insert char)
  (if (< 0 arg) (forward-char -1)))

;; Enable perspective mode for workspaces
(persp-mode)

;; Set the color-theme
;; (color-theme-molokai)

;; y or n vs yes or no
(fset 'yes-or-no-p 'y-or-n-p)

;; Visual bell instead of audo bell
(setq visible-bell t)

;; Delete whitespace on save
(add-hook 'before-save-hook (lambda () (delete-trailing-whitespace)))

;; Set cursor to bar and color
(setq default-cursor-type '(bar . 2))
(set-cursor-color "#FF0000")


(defmacro allow-line-as-region-for-function (orig-function)
`(defun ,(intern (concat (symbol-name orig-function) "-or-line"))
   ()
   ,(format "Like `%s', but acts on the current line if mark is not active."
            orig-function)
   (interactive)
   (if mark-active
       (call-interactively (function ,orig-function))
     (save-excursion
       ;; define a region (temporarily) -- so any C-u prefixes etc. are preserved.
       (beginning-of-line)
       (set-mark (point))
       (end-of-line)
       (call-interactively (function ,orig-function))))))

(allow-line-as-region-for-function comment-or-uncomment-region)

;; (defun textmate-define-comment-line ()
;;   "Add or-line (un)comment function if not already defined"
;;   (unless (fboundp 'comment-or-uncomment-region-or-line)
;;     (allow-line-as-region-for-function comment-or-uncomment-region)))
