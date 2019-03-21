;; It's 2018, Our terminals have more than 80 columns.
(setq-default fill-column 100)

;; use xclip for xwindows
(cond
 ((string-equal system-type "gnu/linux")
  (progn
    (use-package xclip)
    (xclip-mode 1))))

(provide 'config-editing)
