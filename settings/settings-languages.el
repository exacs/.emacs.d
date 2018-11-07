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

(use-package web-mode
  :ensure t
  :commands (web-mode)
  :init
  (setq-default web-mode-enable-auto-quoting nil)
  (setq-default web-mode-attr-indent-offset 2)
  (setq-default web-mode-markup-indent-offset 2)
  (setq-default web-mode-css-indent-offset 2)
  (setq-default web-mode-code-indent-offset 2)
  :mode (("\\.js$" . web-mode)
         ("\\.jsx$" . web-mode)
         ("\\.json$" . web-mode)))

(provide 'settings-languages)
