;;;; INITIAL THINGS
;; Things that should be done as soon as possible to avoid any GUI glitches or
;; micro-delays

;; Turn off menus
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Turn off "Welcome to emacs" screen
(setq inhibit-startup-message t)

;; Maximize
(toggle-frame-maximized)

;;;; AFTER-INITIAL things
;; From here all the "things" to do are inside the "settings" directory
;; Add that directory to the load-path
;; And require the modules...
(add-to-list 'load-path (expand-file-name "settings" user-emacs-directory))
(require 'keyboard-modifiers)
