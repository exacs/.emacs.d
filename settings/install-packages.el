;;;; Install packages
(use-package magit
  :ensure t
  :bind (("C-x g" . 'magit-status)))

(use-package undo-tree
  :ensure t
  :config
  (global-undo-tree-mode 1))

(provide 'install-packages)
