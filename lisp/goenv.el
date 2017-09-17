;;; goenv.el --- Go project switching.

;; Version: 0.1
;; Package-Requires: ()
;; Keywords: tools

(require 'json)
(defun goenv-is-project (dir)
  "Check if a directory is a goenv project."
  (file-exists-p (concat dir "/.goenv")))

(defun goenv-list-projects ()
  "List all goenv projects under ~/Projects."
  (mapcar 'file-name-nondirectory (seq-filter 'goenv-is-project (directory-files (expand-file-name goenv-project-dir) t))))

(defun goenv-get-property (goenv-file property)
  "Get a property from a goenv file."
  (plist-get (let ((json-object-type 'plist)) (json-read-file goenv-file)) property))

(defun goenv-set-environment (project-path gvm-version)
  "Set the go-mode variables and env variables for a particular go environment."
  (setenv "GOROOT" (concat goenv-gvm-dir gvm-version))
  (setenv "PATH" (concat (getenv "GOROOT") "/bin:" goenv-original-path))
  (setenv "GOPATH" project-path)
  (setq go-command (concat  (getenv "GOROOT") "/bin/go")))

(defun goenv (project)
  "Switch to a goenv project."
  (interactive (list
                (completing-read "Project:" (goenv-list-projects))))
  (let ((project-path (concat goenv-project-dir project))
        (goenv-file (concat goenv-project-dir project "/.goenv")))
    (setq goenv-active-project project)
    (goenv-set-environment project-path (goenv-get-property goenv-file :gvm))
    (dired (concat project-path "/src/" (goenv-get-property goenv-file :project)))))

(provide 'goenv)
