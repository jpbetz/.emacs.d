;; Company mode
;; http://company-mode.github.io/
;; https://www.emacswiki.org/emacs/CompanyMode

(use-package company
  :config
  (add-hook 'after-init-hook 'global-company-mode)
  (global-set-key (kbd "M-n") 'company-complete-common))

(provide 'config-completion)
