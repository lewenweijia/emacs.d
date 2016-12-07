; Better buffer list
(use-package ibuffer
  ;; <C-x C-b> invoke ibuffer instead of list-buffer
  :bind (([remap list-buffers] . ibuffer)))

(provide 'init-ibuffer)
