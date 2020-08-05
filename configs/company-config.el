(use-package company
  :straight t
  :config
  (company-mode 1)
  )

(add-hook 'after-init-hook 'global-company-mode)

(provide 'company-config)
