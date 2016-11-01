(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

;; (setq use-package-verbose t)

(provide 'init-use-package)
