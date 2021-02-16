(use-package diminish
  :straight t
  :init
  (message "Loading diminsh...")
  :config
  (message "Loaded diminsh!")
  (diminish 'yas-global-mode)
  (diminish 'yas-minor-mode)
  (diminish 'projectile-mode)
  (diminish 'global-git-gutter-mode)
  (diminish 'git-gutter-mode)
  (diminish 'global-undo-tree-mode)
  (diminish 'undo-tree-mode)
  (diminish 'ivy-mode)
  (diminish 'company-mode)
  (diminish 'global-eldoc-mode)
  (diminish 'eldoc-mode)
  )

(provide 'diminish-config)
