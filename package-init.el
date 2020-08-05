(require 'package)

(add-to-list 'package-archives
             '("elpy" . "http://jorgenschaefer.github.io/packages/"))

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(add-to-list 'load-path "~/.emacs.d/configs/")

; Custom-variable management
(setq custom-file (concat user-emacs-directory "/custom-variables.el"))
(load-file custom-file)

; list the packages you want
(setq package-list
      '(color-theme-sanityinc-solarized evil use-package
	company))

; activate all the packages
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))
