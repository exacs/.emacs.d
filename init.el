;;;; THE FOLLOWING LINES ARE ADDED AUTOMATICALLY IN THE BEGINNING
;;;; ============================================================
(package-initialize)


;;;; INITIAL THINGS
;;;; ==============
;; Things that should be done as soon as possible to avoid any GUI glitches or
;; micro-delays

;;; GUI
;;; ---
;; Turn-off menus
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Turn off "Welcome to emacs" screen
(setq inhibit-startup-message t)

;; Maximize
(toggle-frame-maximized)

;;; Setup package-managers
;;; ----------------------
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("org"   . "http://orgmode.org/elpa/")
                         ("gnu"   . "http://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

;;; Bootstrap `use-package`
;;; -----------------------
;; The package `use-package` provides a macro to install packages and isolate
;; package configuration
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)


;;;; AFTER-INITIAL things
;;;; ====================
;; From here all the "things" to do are inside the "settings" directory
;; Add that directory to the load-path
;; And require the modules...
(add-to-list 'load-path (expand-file-name "settings" user-emacs-directory))
(require 'install-packages)


;;;; THE FOLLOWING LINES ARE ADDED AUTOMATICALLY AT THE END
;;;; ======================================================
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
