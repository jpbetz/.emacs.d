;; Keep custom theme settings in a gitignored file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;;(use-package solarized-theme :config (load-theme 'solarized-dark t))
(use-package nord-theme :config (load-theme 'nord))
;;(use-package doom-themes :config (load-theme 'doom-one t))
;;(use-package color-theme-sanityinc-tomorrow :config (load-theme 'sanityinc-tomorrow-night))

(provide 'config-theme)
