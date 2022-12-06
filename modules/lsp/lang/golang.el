;;================ GOLANG ====================;;
;; Enable golang
(use-package go-mode
  :straight t
  :bind (:map go-mode-map
			  ("C-," . 'akk/hydra-go/body))
  :hook
  (go-mode . lsp-deferred)
  :config
  ;; GOPATH to gopls
  (add-to-list 'exec-path "~/go/bin")
  )
