(require 'lsp-mode)

;; To install:
;; go install golang.org/x/tools/gopls@latest

;; Company mode
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 1)

;; Go - lsp-mode
;; Set up before-save hooks to format buffer and add/delete imports.
(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)

;; Disable automatic dialog overlays
(setq lsp-ui-doc-enable nil)

;; Start LSP Mode
(add-hook 'go-mode-hook #'lsp-deferred)

(provide 'config-go)
