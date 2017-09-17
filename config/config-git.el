;; magit
(use-package magit
  :bind (("C-x g" . magit-status)))

;; diff-hl
(use-package diff-hl
  :config
  (unless window-system (diff-hl-margin-mode t))
  (global-diff-hl-mode t)
  (add-hook 'dired-mode-hook 'diff-hl-dired-mode)
  (add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh))

(provide 'config-git)
