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
(require 'sanityinc-tomorrow-config)
(require 'magit-config)
(require 'evil-magit-config)
(require 'company-config)
(require 'ivy-config)
(require 'org-config)
(require 'smex-config)
(require 'hydra-config)
(require 'which-key-config)
(require 'general-config)
(require 'git-gutter-config)

(require 'my-keyboard-shortcuts)
(require 'my-custom-functions)

; General editor config
(set-face-attribute 'default nil :family "Meslo LG L DZ" :height 120)
(load-theme 'sanityinc-tomorrow-blue)
(show-paren-mode t)
(setq default-buffer-file-coding-system 'utf-8-unix)
(recentf-mode 1)
(setq confirm-kill-emacs 'y-or-n-p)
(column-number-mode 1)
(toggle-frame-maximized)

; Trying to make git respond faster (probably not helping)
(if (eq system-type 'windows-nt)
    (progn
      (setq exec-path (add-to-list 'exec-path "C:/Program Files/Git/bin"))
      (setenv "PATH" (concat "C:\\Program Files\\Git\\bin;" (getenv "PATH")))))
(setenv "GIT_ASKPASS" "git-gui--askpass")
