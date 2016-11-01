;; This must come before configurations of installed packages.
(package-initialize)

;; don't GC during startup to save time
(setq gc-cons-threshold most-positive-fixnum)

;; startup-time recorder
(setq emacs-load-start-time (current-time))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; ============================================
;; Configurations module in 'lisp' directory
;; ============================================

;; Generic configuration
(require 'init-basic-conf)

;; Customized editing tools
(require 'init-editing-utils)

;; Repo
(require 'init-elpa-repos)

;; Packages manager
(require 'init-use-package)

;; Built-in features setup and enhencement(?)
(require 'init-dired)
(require 'init-ibuffer)
(require 'init-savehist)
(require 'init-saveplace)
(require 'init-whitespace)
(require 'init-hippie-expand)
(require 'init-flyspell)
(require 'init-uniquify)

;; UI
(require 'init-themes)
(require 'init-smart-line)

;; Advanced features
(require 'init-ivy)
(require 'init-avy)
(require 'init-company)
(require 'init-magit)

;; Editing utilities
(require 'init-undo-tree)
(require 'init-expand-region)
(require 'init-anzu)

;; Nice tastes
(require 'init-rainbow)
(require 'init-rainbow-delimiters)
(require 'init-which-key)
(require 'init-beacon)

;; Modes
(require 'init-org)

;; ========================================
;; ========================================

(defvar nice-gc-cons-threshold (* 128 1024 1024)) ;; 128MB for GB

(setq gc-cons-threshold nice-gc-cons-threshold)

;; message the consumption time for initialization in *Message* buffer
(add-hook 'after-init-hook
          (lambda ()
            (message "Initial time: %.2fms seconds."
                     (time-to-seconds (time-since emacs-load-start-time)))))

;;; init.el ends here
