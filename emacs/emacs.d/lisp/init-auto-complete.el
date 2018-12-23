;; should be loaded after yasnippet
(require-package 'fuzzy)
(require-package 'popup)
(require-package 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)
(add-to-list 'ac-dictionary-directories
			 (expand-file-name "lisp/custom-dicts" user-emacs-directory))

(setq tab-always-indent 'complete)

(setq-default ac-expand-on-auto-complete nil)
(setq-default ac-auto-start nil)

(ac-set-trigger-key "TAB")


;; use pos-tips instead of popup
(require-package 'pos-tip)
(require 'pos-tip)
(setq ac-quick-help-prefer-pos-tip t)


(setq ac-trigger-enable t)

(setq ac-trigger-commands
	  (cons 'backward-delete-char-untabify ac-trigger-commands))
(after-load 'init-yasnippet
			(set-default 'ac-sources
						 '(ac-source-dictionary
						   ac-source-words-in-buffer
						   ac-source-words-in-same-mode-buffers
						   ac-source-words-in-all-buffer
						   ac-source-functions
						   ac-source-yasnippet)))

(require 'init-ac-source)

(provide 'init-auto-complete)
