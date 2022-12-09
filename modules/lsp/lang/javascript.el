;;=============== JS/TS MODE ===================;;
;; Function to setup javascript and typescript mode
(defun my/setup-js-mode ()
  (require 'dap-firefox)
  (require 'dap-chrome)
  (setq tab-width 2)
  (when (require 'lsp-javascript nil t)
    (lsp)))

;; Enable js2-mode.el
;; Bind js2-mode to any file with the *.js extension by default:
(use-package js2-mode
  :after (lsp-mode dap-mode)
  :mode "\\.js\\'"
  :hook
  ((js2-mode . my/setup-js-mode)))

;; Enable typescript-mode.el
;; Bind typescript-mode to any file with the *.ts extension by default:
(use-package typescript-mode
  :after (lsp-mode dap-mode)
  :mode ("\\.ts\\'" "\\.tsx\\'")
  :hook
  ((typescript-mode . my/setup-js-mode)))

;; Enable risx-mode.el
;; But if a *.js file  is inside a components directory, use rjsx-mode instead:
(use-package rjsx-mode
  :mode "\\.jsx\\'"
  :mode "components\\/.*\\.js\\'"
  :hook ((rjsx-mode . lsp-deferred)))
