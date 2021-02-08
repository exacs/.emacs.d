(use-package elisp-mode
  :mode (("\\.el\\$" . elisp-mode))
  :delight eldoc-mode)

(use-package elixir-mode
  :ensure t
  :commands (elixir-mode)
  :mode (("\\.ex" . elixir-mode)
         ("\\.exs" . elixir-mode)))

(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

(use-package groovy-mode
  :ensure t
  :commands (groovy-mode)
  :init
  (setq-default c-basic-offset 4)
  :mode (("\\.groovy$" . groovy-mode)
         ("\\.gradle" . groovy-mode)))

;; (use-package js2-mode :ensure t
;;   :init
;;   (setq-default js2-show-parse-errors nil)
;;   (setq-default js2-strict-missing-semi-warning nil)
;;   (setq-default js2-basic-offset 2)
;;   :config
;;   :mode (("\\.js$" . js2-mode)))

;;(use-package js2-refactor :ensure t
;;  :hook js2-mode)
(use-package rjsx-mode :ensure t
  :commands (rjsx-mode)
  :mode (("\\.js$" . rjsx-mode)
         ("\\.jsx$" . rjsx-mode)))

(use-package restclient :ensure t
  :commands (restclient-mode)
  :mode (("\\.rest-client" . restclient-mode)))

;; (use-package web-mode
;;   :ensure t
;;   :commands (web-mode)
;;   :init
;;   (setq-default web-mode-enable-auto-quoting nil)
;;   (setq-default web-mode-attr-indent-offset 2)
;;   (setq-default web-mode-markup-indent-offset 2)
;;   (setq-default web-mode-css-indent-offset 2)
;;   (setq-default web-mode-code-indent-offset 2)
;;   :mode (("\\.js$" . web-mode)
;;          ("\\.jsx$" . web-mode)
;;          ("\\.json$" . web-mode)))

(provide 'settings-languages)
