(add-to-list 'load-path (expand-file-name "~/.emacs.d/config"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

;; Local Initialization
(setq local-init-file (expand-file-name "~/.emacs.d/local-init.el"))
(when (file-exists-p local-init-file)
  (load-file local-init-file))

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
(require 'config-completion)
(require 'config-git)

;; Language Config
(require 'config-go)

;; Local Configuration
(setq local-config-file (expand-file-name "~/.emacs.d/local-config.el"))
(when (file-exists-p local-config-file)
  (load-file local-config-file))

;; References
;; https://github.com/howardabrams/dot-files/blob/master/emacs.org
;; https://github.com/jorgenschaefer/Config/blob/master/emacs.el (backup/save handling)
