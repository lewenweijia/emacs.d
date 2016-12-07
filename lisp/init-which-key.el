(use-package which-key
  :ensure t
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 0.4)
  (which-key-add-key-based-replacements "C-c j" "JUMP")
  (which-key-add-key-based-replacements "C-c f" "TOOL")
  (which-key-add-key-based-replacements "C-c g" "GIT")
  (which-key-add-key-based-replacements "C-c p" "Proj")
  (which-key-mode 1))

(provide 'init-which-key)
