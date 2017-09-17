(cond 
 ((find-font (font-spec :name "Knack Nerd Font"))
  (set-frame-font "Knack Nerd Font")))

(setq inhibit-splash-screen t)
;;(setq inhibit-startup-message t)
(setq initial-scratch-message "")

(fset 'yes-or-no-p 'y-or-n-p)
(menu-bar-mode -1)

(when (window-system)
  (tool-bar-mode 0)
  (when (fboundp 'horizontal-scroll-bar-mode)
    (horizontal-scroll-bar-mode -1))
  (scroll-bar-mode -1))

;;(setq ring-bell-function (lambda () (message "♪")))

;;(global-linum-mode t)

(provide 'config-display)
