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

(provide 'mode-mappings)
