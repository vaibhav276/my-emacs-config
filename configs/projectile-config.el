(use-package projectile
  :straight t
  :init
  (message "Loading projctile...")
  :config
  (projectile-mode 1)
  (message "Loaded projectile!")
  )

(provide 'projectile-config)
