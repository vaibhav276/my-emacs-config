(use-package ivy
  :straight t
  :init
  (message "Loading ivy...")
  :config
  (message "Loaded ivy!")
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t)
  )

(provide 'ivy-config)
