;; (use-package go-mode
;;     :config
;;   (add-hook 'go-mode-hook
;;           (lambda ()
;;             (add-hook 'before-save-hook 'gofmt-before-save)
;;             (setq tab-width 4)
;;             (local-set-key (kbd "M-]") 'godef-jump)
;;             (local-set-key (kbd "M-[") 'pop-tag-mark))))

;; (use-package go-guru)
;; (use-package company-go)

;; goenv project switching.
(setq goenv-project-dir (concat (getenv "HOME") "/projects/"))
(setq goenv-gvm-dir (concat (getenv "HOME") "/.gvm/gos/"))
(setq goenv-original-path (getenv "PATH"))
(require 'goenv)
(goenv-set-environment (concat (getenv "HOME") "/go") "go1.8.3") ;; Default go environment

(provide 'config-go)
