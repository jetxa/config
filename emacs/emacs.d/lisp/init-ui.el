(setq-default cursor-type '(bar . 4))
(set-cursor-color "#ff0000")

(if (display-graphic-p)
    (set-background-color "azure"))

;;mode line
(defun graphic-modeline-config()
  (progn
    (custom-set-faces
     '(mode-line ((t (:foreground "white" :background "#0044cc" :box nil))))
     '(mode-line-inactive ((t (:foreground "black" :background "#cccccc" :box nil))))
     )
    (set-face-attribute 'mode-line-buffer-id nil :foreground "red" :background "white")
    )
  )

(defun terminal-modeline-config()
  "you can change color"
  (progn
    (custom-set-faces
     '(mode-line ((t (:foreground "white" :background "#cc4400" :box nil))))
     '(mode-line-inactive ((t (:foreground "black" :background "#cccccc" :box nil))))
     )
    (set-face-attribute 'mode-line-buffer-id nil :foreground "red" :background "white")
    )
  )
;;choose mode line config
;;init-theme.el has smart mode line, but I still use the original mode line
(if (display-graphic-p)
    (graphic-modeline-config)
  (terminal-modeline-config))


(provide 'init-ui)
