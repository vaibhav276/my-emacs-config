; Basic GUI cleanup
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq visible-bell 0)
(blink-cursor-mode 0)

; Update packages
(setq package-init (concat user-emacs-directory "package-init.el"))
(load package-init)

; Apply package configs
(require 'evil-config)

; General editor config
(set-face-attribute 'default nil :family "Monaco" :height 110)
(load-theme 'sanityinc-solarized-light)
(show-paren-mode t)
