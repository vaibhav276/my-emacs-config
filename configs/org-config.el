(use-package org
  :straight t
  :config
  (setq org-startup-indented t)
  (setq org-todo-keywords
      '((sequence "TODO" "STRT" "|" "WAIT" "ABRT" "DONE")))
  )

(provide 'org-config)
