(use-package evil
  :demand t
  :straight t

  :init
  (message "Loading evil...")

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
