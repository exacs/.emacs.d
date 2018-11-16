(load-theme 'molokai t)

(setq visible-bell nil)
(setq ring-bell-function (lambda ()
                           (invert-face 'mode-line)
                           (run-with-timer 0.05 nil 'invert-face 'mode-line)))

(global-hl-line-mode 1)
(show-paren-mode 1)

(provide 'settings-appearance)
