(use-package whitespace
  :diminish whitespace-mode
  :init
  (dolist (hook '(prog-mode-hook text-mode-hook))
    (add-hook hook 'whitespace-mode))

  ;; Cleanup some blank problems in all buffer when do the save operation
  (add-hook 'before-save-hook 'whitespace-cleanup)

  :config
  ;; Specify column beyond which the line is highlighted.
  (setq whitespace-line-column 80)

  (setq whitespace-style '(face tabs trailing)))

(provide 'init-whitespace)
