; Save minibuffer history
(use-package savehist
  :config
  (setq savehist-additional-variables
        ;; search entries
        '(search-ring regexp-search-ring)
        ;; save every minute
        savehist-autosave-interval 60)
  (savehist-mode 1))

(provide 'init-savehist)
