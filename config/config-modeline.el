(line-number-mode 1)
(column-number-mode 1)

(use-package spaceline-config :ensure spaceline
  :init
  (setq powerline-default-separator 'utf-8)
  (setq powerline-utf-8-separator-left ?)
  (setq powerline-utf-8-separator-right ?)
  
  :config
  (require 'goenv)

  ;; nord colors:
  ;; https://github.com/arcticicestudio/nord-emacs/blob/b5c1dc762fe3acaa88a0ce9640085d45d0109c43/nord-theme.el#L81
  (set-face-attribute 'spaceline-highlight-face nil :background (if (display-graphic-p) "#5E81AC" "brightblue")) ;; nord9
  (set-face-attribute 'spaceline-highlight-face nil :foreground (if (display-graphic-p) "#3B4252" "black")) ;; nord1
  (set-face-attribute `mode-line nil :background (if (display-graphic-p) "#4C566A" "brightblack")) ;; nord3, if terminal "brightblack" is too bright, use "black"
  (set-face-attribute `mode-line-highlight nil :background (if (display-graphic-p) "#3B4252" "black")) ;; nord1
  (set-face-attribute `powerline-active1 nil :background (if (display-graphic-p) "#3B4252" "black")) ;; nord1
  (set-face-attribute `powerline-active2 nil :background (if (display-graphic-p) "#3B4252" "black")) ;; nord1

  (set-face-attribute `mode-line-inactive nil :background (if (display-graphic-p) "#3B4252" "black")) ;; nord1
  (set-face-attribute `powerline-inactive1 nil :background (if (display-graphic-p) "#3B4252" "black")) ;; nord1
  (set-face-attribute `powerline-inactive2 nil :background (if (display-graphic-p) "#3B4252" "black")) ;; nord1

  ;; Hide buffer size. Not important enough to keep on the screen all the time.
  (spaceline-toggle-buffer-size-off)
  ;; Hide the modified flag. All my files are under git source control and tracked by my git integration anyway.
  (spaceline-toggle-buffer-modified-off)

  ;; Goenv project switching segment
  (spaceline-define-segment goenv
      "Spaceline goenv project and gvm version"
      (when (boundp 'goenv-gvm-version) (concat goenv-active-project ":" goenv-gvm-version)))
  (spaceline-emacs-theme 'goenv))

(provide 'config-modeline)
