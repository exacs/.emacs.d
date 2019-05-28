;;;; PACKAGES CONFIGURATION
;;;; ======================
;; Configuration specific for packages. Everything starts with `use-package`
(use-package autorevert
  :init
  (setq global-auto-revert-non-file-buffers t)
  (setq auto-revert-verbose nil)
  :config
  (global-auto-revert-mode 1)
  :delight auto-revert-mode)

(use-package delight :ensure t)
(use-package evil :ensure t
  :init
  :config
  (evil-mode 1)
  :delight evil-mode)

(use-package expand-region :ensure t
  :bind (("C-=" . 'er/expand-region)))

(use-package flx-ido :ensure t
  :after (ido)
  :init
  (setq ido-enable-flex-matching t)
  :config
  (flx-ido-mode 1))

(use-package ido :ensure t
  :config
  (ido-mode t))

(use-package ido-completing-read+ :ensure t
  :after (ido)
  :config
  (ido-everywhere 1)
  (ido-ubiquitous-mode 1))

(use-package ido-vertical-mode :ensure t
  :after (ido)
  :init
  (setq ido-vertical-define-keys 'C-n-C-p-up-and-down)
  :config
  (ido-vertical-mode 1))

(use-package magit :ensure t
  :config
  :bind (("C-x g" . 'magit-status)))

(use-package move-text :ensure t
  :config
  :bind (("<C-S-down>" . 'move-text-down)
         ("<C-S-up>" . 'move-text-up)))

(use-package multiple-cursors :ensure t
  :config
  :bind (("C-S-SPC" . 'set-rectangular-region-anchor)))

(use-package projectile :ensure t
  :init
  :config
  (add-to-list 'projectile-globally-ignored-directories "*node_modules")
  (projectile-mode 1)
  (projectile-register-project-type 'npm '("package.json")
                  :compile "npm install"
                  :test "npm test"
                  :run "npm start")
  :bind-keymap ("C-c p" . projectile-command-map)
  :bind (("C-x o" . 'projectile-find-file))
  :delight '(:eval (concat " [" (projectile-project-name) "]")))

(use-package smex :ensure t
  :config
  (smex-initialize)
  :bind (("M-x" . 'smex)))

(use-package undo-tree :ensure t
  :config
  (global-undo-tree-mode 1))

(use-package which-key :ensure t
  :config
  (which-key-mode 1)
  :delight)

(use-package whitespace-cleanup-mode :ensure t
  :config
  (global-whitespace-cleanup-mode)
  :delight)

(use-package zoom-frm
  :load-path "manually-downloaded/"
  :bind (("C-x +" . 'zoom-in)
         ("C-x -" . 'zoom-out)))


;; Represent undo-history as an actual tree (visualize with C-x u)
(setq undo-tree-mode-lighter "")
(require 'undo-tree)
(global-undo-tree-mode)

;; Add parts of each file's directory to the buffer name if not unique
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(provide 'settings-packages)
