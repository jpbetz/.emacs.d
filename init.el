(add-to-list 'load-path (expand-file-name "~/.emacs.d/config"))

;; Packages
(package-initialize)
(require 'config-packaging)

;; Basic Config
(require 'config-display)
(require 'config-backups)

;; UI Config
(require 'config-theme)
(require 'config-modeline)

;; Tooling Config
(require 'config-git)

;; Language Config
(require 'config-go)


;; References
;; https://github.com/howardabrams/dot-files/blob/master/emacs.org
;; https://github.com/jorgenschaefer/Config/blob/master/emacs.el (backup/save handling)
