; Basic GUI cleanup
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq visible-bell 0)
(blink-cursor-mode 0)

; Install straight.el package manager
; (make sure not to use default package manager now)
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

; Install use-package and register with straight.el
(straight-use-package 'use-package)

; Custom-variable management (variables updated automatically)
(setq custom-file (concat user-emacs-directory "custom-variables.el"))
(load-file custom-file)

; Load and configure packages
(add-to-list 'load-path "~/.emacs.d/configs/")
(require 'evil-config)
(require 'sanityinc-solarized-config)
(require 'magit-config)
(require 'evil-magit-config)
(require 'company-config)
(require 'ivy-config)
(require 'org-config)

(require 'my-keyboard-shortcuts)

; General editor config
(set-face-attribute 'default nil :family "Monaco" :height 110)
(load-theme 'sanityinc-solarized-light)
(show-paren-mode t)
