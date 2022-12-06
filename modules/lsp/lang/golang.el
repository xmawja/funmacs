;;================ GOLANG ====================;;
;; Enable golang
(use-package go-mode
  :straight t
  :hook
  ;; set lsp-mode 
  (go-mode . lsp-deferred)
  ;; set company as default code compilaton
  (go-mode . company-mode)
  :config
  ;; GOPATH to gopls
  (add-to-list 'exec-path "~/go/bin")
  ;; Set up before-save hooks to format buffer and add/delete imports.
  ;; Make sure you don't have other gofmt/goimports hooks enabled.
  (defun lsp-go-install-save-hooks ()
	(add-hook 'before-save-hook #'lsp-format-buffer t t)
	(add-hook 'before-save-hook #'lsp-organize-imports t t))
  (add-hook 'go-mode-hook #'lsp-go-install-save-hooks)
  )
