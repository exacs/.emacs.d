;;; Set key bindings for the modifier keys.

;; Use "right alt" for "normal alt"
;; and "left alt" as "super"
(setq ns-right-alternate-modifier nil)
(setq ns-left-alternate-modifier 'super)
(setq mac-command-modifier 'meta)
(setq ns-function-modifier 'hyper)

(global-set-key (kbd "C-x r q") 'save-buffers-kill-terminal)
(global-set-key (kbd "C-x C-c") 'delete-frame)

(global-set-key (kbd "<S-right>") 'windmove-right)
(global-set-key (kbd "<S-left>") 'windmove-left)
(global-set-key (kbd "<S-up>") 'windmove-up)
(global-set-key (kbd "<S-down>") 'windmove-down)

;; Go hardcore without "classic" keybindings
(global-unset-key (kbd "<home>"))
(global-unset-key (kbd "<end>"))

(provide 'settings-keyboard)
