;;; golang.el -*- lexical-binding: t; -*-
;; This file has been generated from funmacs.org file. DO NOT EDIT.
;; Sources are available from https://github.com/xmawja/funmacs

;; Copyright (C) 2022 - 2023 Muja Siyam

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; For a full copy of the GNU General Public License
;; see <https://www.gnu.org/licenses/>.

;; Enable golang
(use-package go-mode
  :straight t
  ;; :requires project
  :hook
  ;; uncomment and choose your prefared lsp packend server.
  ;; 'lsp-mode'.
  ;;(go-mode . lsp-deferred)
  ;; 'eglot' mode.
  (go-mode . eglot-ensure)
  ;; company-mode work best with 'lsp-mode' if use 'eglot' consider corfo.el.
  ;; company code compilaton
  ;;(go-mode . company-mode)
  ;; ;; find project hook root 'go.mod'
  ;; (project-find-functions . project-find-go-module)
  :config
  ;; GOPATH to gopls
  (add-to-list 'exec-path "~/go/bin")
  ;; Set up before-save hooks to format buffer and add/delete imports.
  ;; Make sure you don't have other gofmt/goimports hooks enabled.
  ;; (defun lsp-go-install-save-hooks ()
  ;; 	(add-hook 'before-save-hook #'lsp-format-buffer t t)
  ;; 	(add-hook 'before-save-hook #'lsp-organize-imports t t))
  ;; (add-hook 'go-mode-hook #'lsp-go-install-save-hooks)

  ;; install gopls lsp backend server
  ;; 'go' install golang.org/x/tools/gopls@latest
  ;; (with-eval-after-load 'eglot
  ;;   (add-to-list 'eglot-server-programs
  ;;                '(go-mode . ("gopls" "--stdio"))))

  ;; Configuring project for Go modules in .emacs
  ;; Eglot uses the built-in project package to identify the LSP workspace,
  ;; for a newly-opened buffer.
  ;; The project package does not natively know about GOPATH or Go modules.
  ;; Fortunately, you can give it a custom hook
  ;; to tell it to look for the nearest parent go.mod file
  ;; (that is, the root of the Go module 'go.mod') as the project root.
  (require 'project)
  (defun project-find-go-module (dir)
    (when-let ((root (locate-dominating-file dir "go.mod")))
      (cons 'go-module root)))
  ;; define new methode for project root.
  (cl-defmethod project-root ((project (head go-module)))
    (cdr project))
  ;; find project function hook 'go.mod'
  (add-hook 'project-find-functions #'project-find-go-module)
  ;; Configuring gopls via 'eglot'
  ;; LSP server settings are controlled by the eglot-workspace-configuration variable,
  ;; which can be set either globally in .emacs or in a .dir-locals.el file in the project root.
  (setq-default eglot-workspace-configuration
                '((:gopls .
                          ((staticcheck . t)
                           (matcher . "CaseSensitive")))))
  ) ;; end go-mode.el

;; end 'go-mode' file.
