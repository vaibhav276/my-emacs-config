; dependencies: evil, hydra

(evil-set-leader 'normal (kbd "<SPC>"))
(evil-define-key 'normal 'global (kbd "<leader>bd") 'kill-buffer)
(evil-define-key 'normal 'global (kbd "<leader>gg") 'magit-status)
(evil-define-key 'insert 'global (kbd "M-<SPC>") 'company-complete)
(evil-define-key 'normal 'global (kbd "M-x") 'smex)
(evil-define-key 'normal 'global (kbd "M-X") 'smex-major-mode-commands)
(evil-define-key 'normal 'global (kbd "C-c C-c M-x") 'execute-extended-command)

(defhydra hydra-zoom (global-map "<leader>z")
  "zoom"
  ("g" text-scale-increase "in")
  ("l" text-scale-decrease "out"))

(provide 'my-keyboard-shortcuts)
