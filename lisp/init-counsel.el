(use-package counsel
  :ensure t
  :config
  ;; toggle the ffap ability of counsel-find-file
  (setq counsel-find-file-at-point t)
  :bind (("M-x" . counsel-M-x)

         ;; normal find file function at current path
         ("C-x C-f" . counsel-find-file)
         ("C-x f" . counsel-find-file)

         ;; find file in current git repo
         ("C-c g g" . counsel-git)

         ;; git-grep in current git repo
         ("C-c g f" . counsel-git-grep)

         ;; ;; for big project, grep using ag
         ;; ("C-c f a" . counsel-ag)
         ))

(provide 'init-counsel)

;; counsel-git --> find file in current git repo
;; counsel-git-grep --> matching line in all files of current git repo
