;; This must come before configurations of installed packages.
(package-initialize)

;; don't GC during startup to save time
(setq gc-cons-threshold most-positive-fixnum)

;; startup-time recorder
(setq emacs-load-start-time (current-time))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; ============================================
;; The big master
;; ============================================
(require 'init-elpa-repos)
(require 'init-use-package)

(require 'init-basic-conf)
(require 'init-editing-utils)

(require 'init-dired)
(require 'init-ibuffer)
(require 'init-recentf)
(require 'init-savehist)
(require 'init-saveplace)
(require 'init-whitespace)
(require 'init-hippie-expand)

(require 'init-themes)
(require 'init-smart-line)
(require 'init-beacon)
(require 'init-rainbow)
(require 'init-rainbow-delimiters)

(require 'init-ivy)
(require 'init-avy)
(require 'init-company)
;; (require 'init-projectile)
(require 'init-magit)

(require 'init-counsel)
(require 'init-swiper)
(require 'init-anzu)
(require 'init-expand-region)
(require 'init-which-key)
(require 'init-shell-pop)
(require 'init-neotree)

;; (require 'init-org)
(require 'init-python)

;; ========================================
;; Exprimental stuffs
;; ========================================

;; ;; Built-in features setup and enhencement(?)
;; (require 'init-flyspell)
;; (require 'init-uniquify)

;; ;; Third-part tools
;; (require 'init-ace-window)
;; (require 'init-undo-tree)

;; ========================================
;; normal GC setup and show the init time
;; ========================================

(defvar nice-gc-cons-threshold (* 128 1024 1024)) ;; 128MB for GB

(setq gc-cons-threshold nice-gc-cons-threshold)

;; message the consumption time for initialization in *Message* buffer
(add-hook 'after-init-hook
          (lambda ()
            (message "Initial time: %.2fms seconds."
                     (time-to-seconds (time-since emacs-load-start-time)))))

;; init.el ends here
