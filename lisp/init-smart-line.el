;; https://github.com/Malabarba/smart-mode-line
(use-package smart-mode-line
  :ensure t
  :config
  (setq sml/no-confirm-load-theme t)
  (sml/setup)
  ;; (add-to-list 'sml/replacer-regexp-list '("^~/Git-Projects/" ":Git:") t)
  )

(provide 'init-smart-line)
