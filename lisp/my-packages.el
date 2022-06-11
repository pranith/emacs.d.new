(require 'package)

(setq package-enable-at-startup nil)
  (push '("melpa" . "https://melpa.org/packages/")
        package-archives)
  (push '("melpa-stable" . "http://stable.melpa.org/packages/")
        package-archives)
(package-initialize)
(package-refresh-contents)

(setq package-selected-packages '(evil lsp-mode yasnippet lsp-treemacs helm-lsp
                                  projectile hydra flycheck company avy diminish
                                  which-key helm-xref dap-mode lsp-ui color-theme-sanityinc-solarized
				  yasnippet evil-smartparens sr-speedbar auto-compile helm helm-ag
				  helm-gtags langtool flycheck-vale irony nlinum magit fzf
				  highlight-indent-guides company-irony company-c-headers))

(when (cl-find-if-not #'package-installed-p package-selected-packages)
   (package-refresh-contents)
     (mapc #'package-install package-selected-packages))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(require 'diminish)
(require 'bind-key)
(require 'color-theme-sanityinc-solarized)
(require 'yasnippet)
;(yas-global-mode 1)

;; evil-mode - Thanks for all the fish, Vim!
(require 'evil)
(evil-mode 1)

;; sr-speedbar for source tree traversal
(require 'sr-speedbar)

;; save last line
(require 'saveplace)
(if (fboundp #'save-place-mode)
   (save-place-mode +1)
     (setq-default save-place t))

;(use-package ensime
; :ensure t
; :pin melpa-stable)

(provide 'my-packages)
;;; my-packages ends here
