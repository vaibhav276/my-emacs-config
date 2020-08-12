(use-package evil
  :demand t
  :straight t

  :init
  (message "Loading evil...")
  (progn
    (setq evil-want-C-u-scroll t)
    ;; Change cursor color depending on mode
    (setq evil-emacs-state-cursor '("red" box)
	  evil-normal-state-cursor '("green" box)
	  evil-visual-state-cursor '("orange" box)
	  evil-insert-state-cursor '("red" bar)
	  evil-replace-state-cursor '("red" bar)
	  evil-operator-state-cursor '("red" hollow))
    )

  :custom
  (evil-esc-delay 0.001 "avoid ESC/meta mixups")
  (evil-shift-width 3)
  (evil-search-module 'evil-search)
  ;; (evil-backspace-join-lines nil) ;; not working

  :config
  (message "Loaded evil!")
  (evil-mode 1) ;; enable evil-mode in all buffers
  )

(provide 'evil-config)
