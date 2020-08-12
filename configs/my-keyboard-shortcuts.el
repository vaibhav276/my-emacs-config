; dependencies: evil, hydra, which-key, general

(message "Loading my-keyboard-shortcuts...")
(evil-set-leader 'normal (kbd "<SPC>"))

(general-define-key
 "M-x" 'smex
 "M-X" 'smex-major-mode-commands
 "M-<SPC>" 'company-complete
 "C-c C-c M-x" 'execute-extended-command
 "C-c ," 'with-editor-finish
 "C-c C-k" 'with-editor-cancel
 )

;;;;;;;;;; Leader oriented commands - Start ;;;;;;;;;;
(general-create-definer my-leader-def
  :prefix "<leader>")

; Buffer
(which-key-declare-prefixes "<leader>b" "buffer")
(my-leader-def
  "TAB" 'evil-switch-to-windows-last-buffer
  "bb" 'counsel-switch-buffer
  "bd" 'kill-this-buffer
  )

; Directories
(which-key-declare-prefixes "<leader>d" "directory")
(my-leader-def
  "dd" 'counsel-cd
  "de" 'dired
  )

; File
(which-key-declare-prefixes "<leader>f" "file")
(my-leader-def
  "ff" 'find-file
  "fr" 'recentf-open-files
  )

; Git
(which-key-declare-prefixes "<leader>g" "git")
(my-leader-def
  "gg" 'magit-status
  )

; Misc
(which-key-declare-prefixes "<leader>h" "misc")
(my-leader-def
  "ht" 'load-theme
  )

; Quit
(which-key-declare-prefixes "<leader>q" "quit")
(my-leader-def
  "qq" 'save-buffers-kill-terminal
  )

; Source code
(which-key-declare-prefixes "<leader>s" "source")
(my-leader-def
  "ss" 'swiper
  )

; Window
(which-key-declare-prefixes "<leader>w" "window")
(my-leader-def
  "wd" 'evil-window-delete
  "ws" 'evil-window-split
  "wv" 'evil-window-vsplit
  )

; Hydras
(which-key-declare-prefixes "<leader>z" "zoom")
(defhydra hydra-zoom (global-map "<leader>z")
  "zoom"
  ("g" text-scale-increase "in")
  ("l" text-scale-decrease "out"))

;;;;;;;;;; Leader oriented commands - End ;;;;;;;;;;

(message "Loaded my-keyboard-shortcuts...")
(provide 'my-keyboard-shortcuts)
