;; store all backup and autosave files in the tmp dir
;; (setq backup-directory-alist
;;       `((".*" . ,temporary-file-directory)))
;; (setq auto-save-file-name-transforms
;;       `((".*" ,temporary-file-directory t)))

;; do not auto save and make backup
(setq make-backup-files nil)
(setq auto-save-default nil)

(setq-default indent-tabs-mode nil)   ;; don't use tabs to indent
(setq-default tab-width 4)

;; Newline at end of file
(setq require-final-newline t)

;; delete the selection with a keypress
(delete-selection-mode t)

;; revert buffers automatically when underlying files are changed externally
(global-auto-revert-mode t)

;; Delete files to trash, also work at dired
(setq delete-by-moving-to-trash t)

;; smart tab behavior - indent or complete
(setq tab-always-indent 'complete)

;; more useful frame title, that show either a file or a
;; buffer name (if the buffer isn't visiting a file)
(setq frame-title-format
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))

;; (desktop-save-mode 1)

;; nice scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

;; invisible mouse cursor when editing text
(setq-default make-pointer-invisible t)

(setq inhibit-startup-screen t)
(fset 'display-startup-echo-area-message 'ignore)
(setq use-file-dialog nil)
(setq use-dialog-box nil)

;; buffer configurations
(show-paren-mode 1)
(blink-cursor-mode -1)

;; disable the annoying bell ring
(setq ring-bell-function 'ignore)

;; quickly show the keystrokes
(setq-default echo-keystrokes 0.1)

;; (defalias 'exit 'save-buffers-kill-emacs)

;; highlight current light
(global-hl-line-mode 1)

;; indicate empty line
(setq-default indicate-empty-lines t)

(setq-default fill-column 80)

(put 'upcase-region 'disabled nil) ;; <C-x C-u>
(put 'downcase-region 'disabled nil) ;; <C-x C-l>

;; mode line settings
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; (which-function-mode 1)

(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-x f") 'find-file-at-point)
(global-set-key (kbd "C-c C-z") 'zone)

(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-x C-c"))

;; (transient-mark-mode t)

(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

(provide 'init-basic-conf)
