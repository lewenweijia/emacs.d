(setq package-archives
      '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
        ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

;; (add-to-list 'package-archives
;;              '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;; update the package metadata is the local cache is missing
(unless package-archive-contents
  (package-refresh-contents))

(provide 'init-elpa-repos)
