(use-package ivy
  :ensure t
  :diminish ivy-mode
  :config
  (setq ivy-re-builders-alist
      '((t . ivy--regex-plus)))
  (setq ivy-use-virtual-buffers t)
  (setq confirm-nonexistent-file-or-buffer t)

  ;; Face
  ;; (set-face-attribute 'ivy-current-match nil
  ;;                     :foreground "#DFAF8F")

  ;; (set-face-attribute 'ivy-virtual nil
  ;;                     :foreground "#269BD3")

  (ivy-mode 1))

(use-package counsel
  :ensure t
  :bind (("M-x" . counsel-M-x)
         ("C-x C-f" . counsel-find-file)
         ("C-s" . swiper)))
         ;; ("C-c g" . counsel-git)))

(provide 'init-ivy)
