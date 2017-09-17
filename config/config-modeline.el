(line-number-mode 1)
(column-number-mode 1)

(use-package spaceline-config :ensure spaceline
  :config
  (require 'goenv)

  ;; Goenv project switching segment
  (spaceline-define-segment goenv
      "Spaceline goenv project and gvm version"
      (when (boundp 'goenv-gvm-version) (concat goenv-active-project ":" goenv-gvm-version)))
  (spaceline-emacs-theme 'goenv))

(provide 'config-modeline)
