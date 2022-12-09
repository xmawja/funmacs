;;================== WEB-MODE ====================;;
;; Enable web-mode.el
(use-package web-mode
  :mode "\\.html?\\'"
  :hook ((web-mode . (lambda ()
                       (when (require 'lsp-html nil t)
                         (lsp))))))
