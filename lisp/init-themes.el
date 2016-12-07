;; (load-theme 'light-blue t)
;; (load-theme 'deeper-blue t)
;; (load-theme 'dichromacy t) ;; hi-line overlays hightlight-phrase

;; (use-package dracula-theme
;;   :ensure t
;;   :config
;; (load-theme 'dracula t))

(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn t))

;; (use-package solarized                  ; My colour theme
;;   :ensure solarized-theme
;;   :config
;;   ;; Disable variable pitch fonts in Solarized theme
;;   (setq
;;    solarized-distinct-fringe-background t
;;    solarized-use-variable-pitch nil
;;    ;; Prefer italics over bold
;;    solarized-use-less-bold t
;;    solarized-use-more-italic t
;;    solarized-distinct-doc-face t      ; Emphasize docstrings
;;    ;; I find different font sizes irritating.
;;    solarized-height-minus-1 1.0
;;    solarized-height-plus-1 1.0
;;    solarized-height-plus-2 1.0
;;    solarized-height-plus-3 1.0
;;    solarized-height-plus-4 1.0)
;;   (load-theme 'solarized-light 'no-confirm))

(provide 'init-themes)
