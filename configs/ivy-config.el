(use-package ivy
  :straight t
  :init
  (message "Loading ivy...")
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t)
  (message "Loaded ivy!")
  )

(use-package counsel
  :straight t
  :init
  (message "Loading counsel...")
  :config
  (message "Loaded counsel!")
  )

(use-package swiper
  :straight t
  :init
  (message "Loading swiper...")
  :config
  (message "Loaded swiper!")
  )

(provide 'ivy-config)
