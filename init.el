; default load path for el files

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;;
;; Distro packages: silversearcher-ag mu4e
;; (debug-on-entry 'display-warning)

;; custom file location

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(setq load-prefer-newer t)
(add-to-list 'load-path "/usr/local/google/home/pranithk/.emacs.d/lisp")
(add-to-list 'load-path "/usr/local/google/home/pranithk/.emacs.d/local")

(require 'my-packages)
(require 'my-helm)
(require 'my-git)
(require 'my-text)
(require 'my-prog)
(require 'my-gdb)
(require 'my-irc)
;(require 'my-log)
;(require 'my-vg)

(require 'auto-compile)
(auto-compile-on-load-mode)
(auto-compile-on-save-mode)

;; create backups
(setq backup-directory-alist `(("." . "/usr/local/google/home/pranithk/.saves")))
(setq backup-by-copying t)
(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)

(byte-recompile-directory (expand-file-name "/usr/local/google/home/pranithk/.emacs.d/lisp/") 0)

(defun stop-using-minibuffer ()
  "kill the minibuffer"
  (when (and (>= (recursion-depth) 1) (active-minibuffer-window))
    (abort-recursive-edit)))

(add-hook 'mouse-leave-buffer-hook 'stop-using-minibuffer)

(setq inhibit-startup-screen t)

;; start emacs server
(server-start)

;; Add final message so using C-h l I can see if .emacs failed
(message ".emacs loaded successfully.")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes '(sanityinc-tomorrow-bright))
 '(custom-safe-themes
   '("1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" default))
 '(package-selected-packages
   '(circe vale-mode chess fzf magit color-theme-sanityinc-tomorrow evil lsp-mode yasnippet lsp-treemacs helm-lsp projectile hydra flycheck company avy diminish which-key helm-xref dap-mode lsp-ui color-theme-sanityinc-solarized yasnippet evil-smartparens sr-speedbar auto-compile helm helm-ag langtool flycheck-vale irony nlinum highlight-indent-guides company-irony company-c-headers))
 '(safe-local-variable-values '((c-set-style . "m5"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Monaco" :foundry "APPL" :slant normal :weight normal :height 113 :width normal)))))
