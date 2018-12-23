(setq org-src-fontify-natively t)

;;babel
(org-babel-do-load-languages 'org-babel-load-languages
			     '((dot . t)
			       (ditaa . t)
			       (lisp . t)
			       (octave . t)
			       (gnuplot . t)
			       (python . t)
			       (C . t)
			       (sh . t)
			       (latex . t)
			       (emacs-lisp . t)))
(setq org-confirm-babel-evaluate nil)
(setq org-edit-src-content-indentation 0)

(provide 'init-org-mode)
