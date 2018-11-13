;;;; PACKAGES CONFIGURATION
;;;; ======================
;; Configuration specific for packages. Everything starts with `use-package`
(use-package evil :ensure t
  :init)

(use-package magit
  :ensure t
  :bind (("C-x g" . 'magit-status)))

(use-package undo-tree
  :ensure t
  :config
  (global-undo-tree-mode 1))

(use-package whitespace-cleanup-mode
  :ensure t
  :config
  (global-whitespace-cleanup-mode))

(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-molokai t)
  (doom-themes-visual-bell-config))

(use-package which-key
  :ensure t
  :init
  (which-key-mode 1))

(use-package ido :ensure t
  :init
  (ido-mode t))

(use-package ido-vertical-mode :ensure t
  :after (ido)
  :init
  (ido-vertical-mode 1)
  (setq ido-vertical-define-keys 'C-n-C-p-up-and-down))

(use-package ido-completing-read+ :ensure t
  :after (ido)
  :init
  (ido-everywhere 1)
  (ido-ubiquitous-mode 1))

(use-package move-text :ensure t
  :config
  :bind (("<C-S-down>" . 'move-text-down)
         ("<C-S-up>" . 'move-text-up)))

(use-package smex :ensure t
  :init
  (smex-initialize)
  :bind (("M-x" . 'smex)))

(use-package projectile :ensure t
  :init
  (projectile-mode 1)
  :bind-keymap ("C-c p" . projectile-command-map))


(use-package expand-region :ensure t
  :bind (("<C-=>" . 'er/expand-region)))

(use-package multiple-cursors :ensure t
  :config
  :bind (("C-S-SPC" . 'set-rectangular-region-anchor)))

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
