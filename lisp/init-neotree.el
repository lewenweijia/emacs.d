;; (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(use-package neotree
  :ensure t
  :bind ("C-c f n" . neotree)
  )

(provide 'init-neotree)
