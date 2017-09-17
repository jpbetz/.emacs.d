(line-number-mode 1)
(column-number-mode 1)

(use-package spaceline-config :ensure spaceline
  :config
  (spaceline-define-segment goenv
      "goenv project switching in modeline"
      (when f "<TODO: apply goenv>"))
  (spaceline-emacs-theme 'goenv))

(provide 'config-modeline)
