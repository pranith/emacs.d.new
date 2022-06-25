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
(add-to-list 'load-path "/home/pranith/.emacs.d/lisp")
(add-to-list 'load-path "/home/pranith/.emacs.d/local")

(require 'my-packages)
(require 'my-helm)
(require 'my-git)
(require 'my-text)
(require 'my-prog)
(require 'my-gdb)
;(require 'my-log)
;(require 'my-vg)

(require 'auto-compile)
(auto-compile-on-load-mode)
(auto-compile-on-save-mode)

;; create backups
(setq backup-directory-alist `(("." . "/home/pranith/.saves")))
(setq backup-by-copying t)
(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)

(byte-recompile-directory (expand-file-name "/home/pranith/.emacs.d/lisp/") 0)

;; start emacs server
(server-start)

;; open log file
(setq inhibit-startup-screen t)

;; Add final message so using C-h l I can see if .emacs failed
(message ".emacs loaded successfully.")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#839496" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#fdf6e3"))
 '(beacon-color "#d33682")
 '(column-number-mode t)
 '(custom-enabled-themes '(sanityinc-tomorrow-day))
 '(custom-safe-themes
   '("bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" default))
 '(fci-rule-color "#073642")
 '(flycheck-color-mode-line-face-to-color 'mode-line-buffer-id)
 '(frame-background-mode 'dark)
 '(package-selected-packages
   '(fzf magit color-theme-sanityinc-tomorrow evil lsp-mode yasnippet lsp-treemacs helm-lsp projectile hydra flycheck company avy diminish which-key helm-xref dap-mode lsp-ui color-theme-sanityinc-solarized yasnippet evil-smartparens sr-speedbar auto-compile helm helm-ag helm-gtags langtool flycheck-vale irony nlinum highlight-indent-guides company-irony company-c-headers))
 '(safe-local-variable-values '((c-set-style . "m5")))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   '((20 . "#dc322f")
     (40 . "#cb4b16")
     (60 . "#b58900")
     (80 . "#859900")
     (100 . "#2aa198")
     (120 . "#268bd2")
     (140 . "#d33682")
     (160 . "#6c71c4")
     (180 . "#dc322f")
     (200 . "#cb4b16")
     (220 . "#b58900")
     (240 . "#859900")
     (260 . "#2aa198")
     (280 . "#268bd2")
     (300 . "#d33682")
     (320 . "#6c71c4")
     (340 . "#dc322f")
     (360 . "#cb4b16")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Monaco" :foundry "APPL" :slant normal :weight normal :height 113 :width normal)))))
