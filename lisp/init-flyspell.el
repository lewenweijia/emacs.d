 ; On-the-fly spell checking
(use-package flyspell
  :init
  ;; (dolist (hook '(text-mode-hook message-mode-hook))
  ;;   (add-hook hook 'turn-on-flyspell))
  ;; (add-hook 'prog-mode-hook 'flyspell-prog-mode)

  :config
  (setq flyspell-issue-welcome-flag nil
        flyspell-issue-message-flag nil))

(provide 'init-flyspell)
