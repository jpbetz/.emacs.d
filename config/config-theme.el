;; Keep custom theme settings in a gitignored file
(setq custom-theme-file (expand-file-name "~/.emacs.d/custom.el"))
(when (not (file-exists-p custom-theme-file))
  (write-region "" nil custom-theme-file))
(setq custom-file custom-theme-file)
(load custom-file)

;;(use-package solarized-theme :config (load-theme 'solarized-dark t))
(use-package nord-theme :config (load-theme 'nord))
;;(use-package doom-themes :config (load-theme 'doom-one t))
;;(use-package color-theme-sanityinc-tomorrow :config (load-theme 'sanityinc-tomorrow-night))

(provide 'config-theme)
