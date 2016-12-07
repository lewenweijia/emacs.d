(use-package ivy
  :ensure t
  :config
  (setq ivy-re-builders-alist
        '((t . ivy--regex-plus)))

  ;; show recent file in <C-x b> for quick open recent file
  (setq ivy-use-virtual-buffers t)

  (setq confirm-nonexistent-file-or-buffer t)

  ;; toggle ivy at all buffer
  (ivy-mode 1)

  ;; suppress 'ivy-mode' string to show in mode-line
  :diminish ivy-mode)

(provide 'init-ivy)
