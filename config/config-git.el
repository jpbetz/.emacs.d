;; magit
(use-package magit
  :bind (("C-x g" . magit-status)))

;; diff-hl
(use-package diff-hl
  :config
  (global-diff-hl-mode t)
  (diff-hl-dired-mode t)
  (unless window-system (diff-hl-margin-mode t))
  (add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh))

(provide 'config-git)
