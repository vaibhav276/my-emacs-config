(use-package org
  :straight t
  :defer t
  :init
  (message "Loading org...")
  :config
  (message "Loaded org!")
  (setq org-startup-indented t)
  (setq org-todo-keywords
      '((sequence "TODO" "STRT" "|" "WAIT" "ABRT" "DONE")))
  )

(provide 'org-config)
