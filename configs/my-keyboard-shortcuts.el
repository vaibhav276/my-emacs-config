(evil-set-leader 'normal (kbd "<SPC>"))
(evil-define-key 'normal 'global (kbd "<leader>bd") 'kill-buffer)
(evil-define-key 'normal 'global (kbd "<leader>gg") 'magit-status)
(evil-define-key 'insert 'global (kbd "M-<SPC>") 'company-complete)

(provide 'my-keyboard-shortcuts)
