;; Force gdb-mi to not dedicate any windows
(defadvice gdb-display-buffer (after undedicate-gdb-display-buffer)
  (set-window-dedicated-p ad-return-value nil))
(ad-activate 'gdb-display-buffer)

(defadvice gdb-set-window-buffer (after undedicate-gdb-set-window-buffer (name &optional ignore-dedi window))
  (set-window-dedicated-p window nil))
(ad-activate 'gdb-set-window-buffer)

(setq comint-scroll-to-bottom-on-input t)
(setq comint-scroll-to-bottom-on-output t)
(setq gdb-many-windows nil)
(setq gud-gdb-command-name "gdb ~/workspace/code/gem5/build/ARM/gem5.debug")

'(company-global-modes '(not gud-mode))

(defun run-gdb ()
  "Invoke gdb with GEM5 binary"
  (interactive)
  (let ((default-directory "~/workspace/code/gem5/"))
  (gud-gdb "build/ARM/gem5.debug")))
;  (gdb (shell-command-to-string "cat ~/debug.txt"))))

(global-set-key (kbd "C-c -") 'run-gdb)

(provide 'my-gdb)
