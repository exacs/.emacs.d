;;;; package-swiper
;; This package includes Ivy, Counsel and Swiper.
;; https://github.com/abo-abo/swiper
(use-package ivy
  :ensure t
  :init
  (ivy-mode 1)
  (setq ivy-format-function 'ivy-format-function-arrow)
  :bind (("C-s" . 'swiper)
	 ;; ("M-x" . 'counsel-M-x)
	 ("C-x C-f" .'counsel-find-file)))

(use-package counsel
  :ensure t
  :init
  (counsel-mode 1)
  :bind (("C-s" . 'swiper)))

(provide 'package-swiper)
