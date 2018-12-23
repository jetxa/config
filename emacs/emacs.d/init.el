;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;;(package-initialize)
 
(setq debug-on-error t)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(defconst *spell-check-support-enable nil)
(defconst *is-a-mac (eq system-type 'darwin))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(require 'init-utils)
(require 'init-elpa)
(require 'init-exec-path)

(require 'init-basic)
(require 'init-ui)
(require 'init-theme)
(require 'init-tabbar)
(require 'init-recentf)
(require 'init-ido)
(require 'init-hippie-expand)
(require 'init-yasnippet)
(require 'init-auto-complete)
(require 'init-git)
(require 'init-markdown)
(require 'init-org-mode)

(when (file-exists-p custom-file)
  (load custom-file))

(when (file-exists-p (expand-file-name "init-local.el" user-emacs-directory))
  (error "Please move init-local.el to ~/.emacs.d/lisp"))

(require 'init-local nil t)


(provide 'init)
