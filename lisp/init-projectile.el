(use-package projectile
  :ensure t
  :config
  (projectile-mode))

;; ivy UI for projectile
(use-package counsel-projectile
  :ensure t
  :config
  (counsel-projectile-on))


(provide 'init-projectile)
