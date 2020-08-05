(use-package company
  :straight t
  :init
  (message "Loading company...")
  :config
  (message "Loaded company!")
  (company-mode 1)
  )

(add-hook 'after-init-hook 'global-company-mode)

(provide 'company-config)
