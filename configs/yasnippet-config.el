(use-package yasnippet
  :straight t
  :init
  (message "Loading yasnippet...")
  :config
  (setq yas-snippet-dirs '("~/repos/yasnippet-snippets"))
  (yas-global-mode 1)
  (message "Loaded yasnippet!")
  )

(provide 'yasnippet-config)
