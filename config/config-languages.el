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
  ;; gopls might not be ready yet...
  ;; (lsp-register-client
  ;; (make-lsp-client :new-connection (lsp-stdio-connection "gopls")
  ;;                  :major-modes '(go-mode)
  ;;                  :server-id 'gopls))
  (setq lsp-ui-doc-enable nil)
  (setq lsp-ui-peek-enable nil)
  (setq lsp-ui-sideline-enable nil)
  (setq lsp-ui-imenu-enable nil))

(add-hook 'go-mode-hook 'lsp)

;; TODO: How to enable goimport formatting for go-mode?
;; (setq lsp-clients-go-language-server-flags "--format-style="goimports"

(provide 'config-languages)
