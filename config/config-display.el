(cond 
 ((find-font (font-spec :name "Hack Nerd Font Mono"))
  (set-frame-font "Hack Nerd Font Mono")))

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

;; https://www.reddit.com/r/emacs/comments/3u0d0u/how_do_i_make_the_vertical_window_divider_more/
;; (defun my-change-window-divider ()
;;   (let ((display-table (or buffer-display-table standard-display-table)))
;;     (set-display-table-slot display-table 5 ?│) 
;;     (set-face-foreground 'vertical-border "black")
;;     (set-window-display-table (selected-window) display-table)))
;; (add-hook 'window-configuration-change-hook 'my-change-window-divider)

(provide 'config-display)
