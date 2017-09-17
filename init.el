(add-to-list 'load-path (expand-file-name "~/.emacs.d/config"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

;; Packages
(package-initialize)
(require 'config-packaging)

;; TODO: What's the right way to conditionally load a elisp project?
(when (file-exists-p (expand-file-name "~/.emacs.d/local-init.el"))
  (load-file (expand-file-name "~/.emacs.d/local-init.el"))
  (require 'local-init))

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


;; References
;; https://github.com/howardabrams/dot-files/blob/master/emacs.org
;; https://github.com/jorgenschaefer/Config/blob/master/emacs.el (backup/save handling)
