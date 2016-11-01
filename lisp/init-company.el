(use-package company
  :ensure t
  :diminish company-mode
  :config
  (setq company-show-numbers t)
  (setq company-idle-delay 0.4)

  ;; suppress mininbuffer message
  (fset 'company-echo-show 'ignore)

  (setq  company-tooltip-align-annotations t
         company-tooltip-flip-when-above t)

  (define-key company-active-map (kbd "C-n") 'company-select-next)
  (define-key company-active-map (kbd "C-p") 'company-select-previous)
  (define-key company-active-map (kbd "C-s") 'company-filter-candidates)
  (define-key company-active-map (kbd "C-i") 'company-complete-selection)

  (define-key company-search-map (kbd "C-n") 'company-select-next)
  (define-key company-search-map (kbd "C-p") 'company-select-previous)
  (global-company-mode 1))

(provide 'init-company)
