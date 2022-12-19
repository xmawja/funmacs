;;; rust.el -*- lexical-binding: t; -*-
;; This file has been generated from funmacs.org file. DO NOT EDIT.
;; Sources are available from https://github.com/xmawja/funmacs

;; Copyright (C) 2022 Muja Siyam

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

;; Enable rust.el
(use-package rustic
  :straight t
  :hook
  ;; auto-save mode.
  (rustic-mode . rustic-mode-auto-save-hook)
  :init
  ;; the default lsp is lsp-mode but we can changet to eglot by.
  ;; uncoment if you are using eglot mode.
  (setq rustic-lsp-client 'eglot)
  
  :bind (:map rustic-mode-map
              ("M-j" . lsp-ui-imenu)
              ("M-?" . lsp-find-references)
              ("C-c C-c l" . flycheck-list-errors)
              ("C-c C-c a" . lsp-execute-code-action)
              ("C-c C-c r" . lsp-rename)
              ("C-c C-c q" . lsp-workspace-restart)
              ("C-c C-c Q" . lsp-workspace-shutdown)
	      ("C-c C-c s" . lsp-rust-analyzer-status))
  :config
  ;; rust cargo bin PATH.
  (add-to-list 'exec-path "~/.cargo/bin")
  ;; the default lsp is lsp-mode but we can changet to eglot by.
  ;;(setq rustic-analyzer-command '("~/.cargo/bin/rust-analyzer"))
  ;; eglot mode.
  ;; (setq rustic-lsp-client 'eglot)
  ;; set rustfmt on save
  (setq rustic-format-on-save t)
  ;; auto-save.
  (defun rustic-mode-auto-save-hook ()
    "Enable auto-saving in rustic-mode buffers."
    (when buffer-file-name
      (setq-local compilation-ask-about-save nil)))
  )
;; Enable cargo.el
(use-package cargo
  :hook
  (rust-mode . cargo-minor-mode))
