(setq make-backup-files nil)
(set-default-font "Monaco-18")
;;(setq default-frame-alist '((height . 30)(width . 80)))
;;(set-frame-size (selected-frame) 80 30)
(add-to-list 'default-frame-alist '(fullscreen . maximized))


(setq column-number-mode t)
(setq line-number-mode t)
(global-linum-mode t)

;;time
(display-time-mode t)
;(setq display-time-format "%I:%M:%S")
;(setq display-time-string-forms
;      '((propertize (format-time-string "%H:%M" now) 'face 'bold)))


(global-hl-line-mode 1)  
(electric-pair-mode t)
(show-paren-mode t)

(tool-bar-mode 0)
(menu-bar-mode 0)
;;(scroll-bar-mode 0)

(setq-default indent-tabs-mode nil);; change tab to space 
(setq c-basic-offset 4)
(setq c-default-style "linux");
(setq default-tab-width 4)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(provide 'init-basic)
