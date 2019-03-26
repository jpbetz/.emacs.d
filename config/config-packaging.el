(require 'package)

(setq package-archives '(("org"       . "http://orgmode.org/elpa/")
                         ("gnu"       . "http://elpa.gnu.org/packages/")
                         ("melpa"     . "http://melpa.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")))

(unless (package-installed-p 'use-package)
  (message "use-package not installed, installing")
  (package-refresh-contents)
  (package-install 'use-package)
  (message "use-package installed"))

(require 'use-package)
(setq use-package-always-ensure t)

;; Run 'paradox-upgrade-packages' to trigger a package update
(use-package paradox
  :init
  (setq paradox-github-token t)
  (setq paradox-execute-asynchronously t)
  (setq paradox-automatically-star t))

(provide 'config-packaging)
