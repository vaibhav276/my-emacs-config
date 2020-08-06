(use-package which-key
  :straight t
  :init
  (message "Loading which-key...")
  :config
  (message "Loaded which-key!")
  (which-key-mode 1)
  )

(provide 'which-key-config)
