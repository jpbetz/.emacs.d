;; Company mode
;; http://company-mode.github.io/
;; https://www.emacswiki.org/emacs/CompanyMode

;; eldoc is on by default, turn it off
(global-eldoc-mode -1)

;; Use company for autocomplete
(use-package company
  :config
  (add-hook 'after-init-hook 'global-company-mode)
  (global-set-key (kbd "M-n") 'company-complete-common))

;; Use Language Servers for language integration
(use-package lsp-mode
  :commands lsp
  :config
  (setq lsp-ui-doc-enable nil)
  (setq lsp-ui-peek-enable nil)
  (setq lsp-ui-sideline-enable nil)
  (setq lsp-ui-imenu-enable nil)
  :init)

(add-hook 'go-mode-hook 'lsp)

(provide 'config-languages)
