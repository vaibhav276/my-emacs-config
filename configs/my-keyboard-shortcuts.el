; dependencies: evil, hydra, which-key, general

(message "Loading my-keyboard-shortcuts...")
(evil-set-leader 'normal (kbd "<SPC>"))

(general-define-key
 "M-x" 'smex
 "M-X" 'smex-major-mode-commands
 "M-<SPC>" 'company-complete
 "C-c C-c M-x" 'execute-extended-command
 )

; Leader oriented commands
(general-create-definer my-leader-def
  :prefix "<leader>")

; File
(which-key-declare-prefixes "<leader>f" "file")
(my-leader-def
  "ff" 'find-file
  "fr" 'recentf-open-files
  )

; Buffer
(which-key-declare-prefixes "<leader>b" "buffer")
(my-leader-def
  "TAB" 'evil-switch-to-windows-last-buffer
  "bb" 'switch-to-buffer
  "bd" 'kill-this-buffer
  )

; Quit
(which-key-declare-prefixes "<leader>q" "quit")
(my-leader-def
  "qq" 'save-buffers-kill-terminal
  )

(which-key-declare-prefixes "<leader>g" "git")
(my-leader-def
  "gg" 'magit-status
  )

; Hydras
(which-key-declare-prefixes "<leader>z" "zoom")
(defhydra hydra-zoom (global-map "<leader>z")
  "zoom"
  ("g" text-scale-increase "in")
  ("l" text-scale-decrease "out"))

(message "Loaded my-keyboard-shortcuts...")
(provide 'my-keyboard-shortcuts)
