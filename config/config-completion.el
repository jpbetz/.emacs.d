;; Company mode
;; http://company-mode.github.io/
;; https://www.emacswiki.org/emacs/CompanyMode

(use-package company
  :config
  (add-hook 'after-init-hook 'global-company-mode)
  (global-set-key (kbd "M-n") 'company-complete-common))

(use-package lsp-mode
  :commands lsp
  :config
  (setq lsp-ui-doc-enable nil)
  (setq lsp-ui-peek-enable nil)
  (setq lsp-ui-sideline-enable nil)
  (setq lsp-ui-imenu-enable nil)
  (global-eldoc-mode -1) ;; eldoc mode loads previews in the bottom pane, kinda annoying
  :init)

(add-hook 'go-mode-hook 'lsp)

(provide 'config-completion)
