;;=============== JS/TS MODE ===================;;
;; Function to setup javascript and typescript mode
(defun my/setup-js-mode ()
  (require 'dap-firefox)
  (require 'dap-chrome)
  (setq tab-width 2)
  (when (require 'lsp-javascript nil t)
    (lsp)))

;; Enable js2-mode.el
(use-package js2-mode
  :after (lsp-mode dap-mode)
  :mode "\\.js\\'"
  :hook
  ((js2-mode . my/setup-js-mode)))
