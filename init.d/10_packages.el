(require 'package)

(setq url-proxy-services '(("no_proxy" . "work\\.com")
                           ("http" . "proxy.jf.intel.com:911")))

(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("tromey" . "http://tromey.com/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(auto-complete
                      ack-and-a-half
                      guru-mode
                      expand-region
                      ruby-tools
		      color-theme
		      color-theme-monokai
		      color-theme-molokai
		      color-theme-sanityinc-tomorrow
		      color-theme-sanityinc-solarized
                      ruby-end
                      rsense
                      rinari
                      haml-mode
                      textmate
                      inf-ruby
		      rvm
		      yaml-mode
		      rainbow-mode
		      ido-ubiquitous
		      coffee-mode
                      autopair
                      multiple-cursors
                      rspec-mode
                      perspective
		      fill-column-indicator)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(dolist (p my-packages)
  (require p))
