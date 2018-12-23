(require 'ido)
(ido-mode t)
(ido-everywhere t)
(setq ido-enable-flex-matching t)
(setq ido-use-virtual-buffers t)

(require-package 'ido-completing-read+)
(ido-ubiquitous-mode t)

(require-package 'smex)
(smex-initialize)
(global-set-key "\M-x" 'smex)
(global-set-key "\M-X" 'smex-major-mode-commands)

(provide 'init-ido)
