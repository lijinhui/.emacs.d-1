(require 'package)

;;(setq url-proxy-services '(("no_proxy" . "work\\.com")
;;                           ("http" . "proxy:911")))

(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("tromey" . "http://tromey.com/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(ag
                      linum-relative
                      org
                      projectile
                      rust-mode
                      ctags
                      ido-ubiquitous
                      auto-complete
                      htmlize
                      expand-region
                      ruby-tools
                      ruby-end
                      rsense
                      rinari
                      haml-mode
                      inf-ruby
                      rvm
                      feature-mode
                      yaml-mode
                      rainbow-mode
                      coffee-mode
                      autopair
                      multiple-cursors
                      rspec-mode
                      magit
                      perspective
		      fill-column-indicator
                      cppcheck
	              go-autocomplete
	              go-mode
	              multi-web-mode
                      color-theme
                      color-theme-heroku)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(dolist (p my-packages)
  (require p))
