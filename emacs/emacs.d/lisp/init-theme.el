;;(require-package 'smart-mode-line)
;;(setq sml/no-confirm-load-theme t)
;(setq sml/theme 'light)
;;(custom-set-faces
;; '(mode-line               ((t :foreground "white" :background "#0044cc" :inverse-video nil)))
;; '(sml/global              ((t :foreground "white" :background "#0044cc" :inverse-video nil)))
;; ;;from left to right
;; '(sml/line-number         ((t :inherit sml/global :foreground "black" :background "white")))
;; '(sml/numbers-separator   ((t :inherit sml/line-number)))
;; '(sml/col-number          ((t :inherit sml/global :foreground "black" :background "white")))
;; '(sml/mule-info           ((t :inherit sml/global)))
;; '(sml/not-modified        ((t :inherit sml/globall)))
;; '(sml/remote              ((t :inherit sml/global)))
;; '(sml/prefix              ((t :inherit sml/global :foreground "yellow" :weight bold)))
;; '(sml/folder              ((t :inherit sml/global :foreground "red" :background "white")))
;; '(sml/filename            ((t :inherit sml/global :foreground "red" :background "white" :weight bold)))
;; '(sml/name-filling        ((t :inherit sml/global)))
;; '(sml/position-percentage ((t :inherit sml/global)))
;; '(sml/git                 ((t :inherit sml/global :foreground "yellow")))
;; '(sml/modes               ((t :inherit sml/global)))
;; '(sml/minor-modes         ((t :inherit sml/global)))
;; '(sml/time                ((t :inherit sml/global :foreground "red" :background "white")))

 ;;unknown 
;; '(sml/discharging         ((t :inherit sml/global)))
;; '(sml/vc-edited           ((t :inherit sml/global)))
;; '(sml/vc                  ((t :inherit sml/global)))
;; '(sml/process             ((t :inherit sml/global)))
;; '(sml/sudo                ((t :inherit sml/global)))
;; '(sml/read-only           ((t :inherit sml/global)))
;; '(sml/client              ((t :inherit sml/global)))
;; '(mode-line-inactive      ((t :foreground "white" :background "#aaaaaa" :inverse-video nil)))
;; )

;;(sml/setup)

;;;;I still confuse about the source code of the smart mode line, like the
;;;;position and the color in inactive, so I use the original mode line.


;;nyan-mode
(require-package 'nyan-mode)
(nyan-mode t)
(nyan-start-animation)
(setq-default nyan-wavy-trail t)


;(require-package 'powerline)
;(powerline-default-theme)

(provide 'init-theme)
