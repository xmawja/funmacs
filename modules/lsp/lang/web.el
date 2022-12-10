;;================== WEB-MODE ====================;;
;; Enable web-mode.el
(use-package web-mode
  :mode
  "\\.html?\\'" ;; html support
  "\\.css?\\'"  ;; css support
  :hook ((web-mode . (lambda ()
                       (when
						 ;; auto emerge emmet-ls
						 (require 'emmet-ls nil t)
						 ;; auto emerge lsp-html
						 (require 'lsp-html nil t)
						 ;; auto emerge css-ls
						 (require 'css-ls nil t)
                         (lsp-deferred))))))
