(defun dos2unix ()
  "Convert a DOS formatted text buffer to UNIX format"
  (interactive)
  (set-buffer-file-coding-system 'undecided-unix nil))

(defun unix2dos ()
  "Convert a UNIX formatted text buffer to DOS format"
  (interactive)
  (set-buffer-file-coding-system 'undecided-dos nil))

(defun set-mle-coding-style ()
  (interactive)
  (setq c-default-style "linux"
        c-basic-offset 3
        indent-tabs-mode nil))

(defun set-td-coding-style ()
  (interactive)
  (setq c-default-style "linux"
        c-basic-offset 4
        indent-tabs-mode nil))

(provide 'my-custom-functions)
