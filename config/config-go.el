(use-package go-mode
    :config
  (add-hook 'go-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'gofmt-before-save)
            (setq tab-width 4)
            (local-set-key (kbd "M-]") 'godef-jump)
            (local-set-key (kbd "M-[") 'pop-tag-mark))))

;; (use-package go-guru)
(use-package company-go)

;; http://tleyden.github.io/blog/2014/05/22/configure-emacs-as-a-go-editor-from-scratch/
(defun auto-complete-for-go ()
  (auto-complete-mode 1))

(use-package go-autocomplete)
(add-hook 'go-mode-hook 'auto-complete-for-go)

;; goenv project switching.
(setq goenv-project-dir (concat (getenv "HOME") "/projects/"))
(setq goenv-gvm-dir (concat (getenv "HOME") "/.gvm/gos/"))
(setq goenv-original-path (getenv "PATH"))
(require 'goenv)
(goenv-set-environment (concat (getenv "HOME") "/go") "go1.12.1") ;; Default go environment
(when (getenv "GOENV_NAME")
  (goenv (getenv "GOENV_NAME")))

(provide 'config-go)
