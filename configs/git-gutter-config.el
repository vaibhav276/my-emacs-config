(use-package git-gutter
  :straight t
  :init
  (message "Loading git-gutter...")
  :config
  (message "Loaded git-gutter!")
  (global-git-gutter-mode +1)
  )

(provide 'git-gutter-config)
