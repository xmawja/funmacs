;;; lsp-mode.el -*- lexical-binding: t; -*-
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

;; Enable lsp.el
(use-package lsp-mode
  :straight t
  :commands (lsp lsp-deferred)
  :init
  ;; after init
  (after-init . lsp-mode)
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  ;; set c/c++ compilation and snippetg
  (setq gc-cons-threshold (* 100 1024 1024)
      read-process-output-max (* 1024 1024)
      treemacs-space-between-root-nodes nil
      company-idle-delay 0.0
      company-minimum-prefix-length 1
      lsp-idle-delay 0.1)  ;; clangd is fast
  :hook
  (lsp-mode . ms/lsp-mode-setup)      ; Enable Header Breadcrumb
  ;; LSP LANGUAGES SUPPORT
  (c-mode . lsp-deferred)             ; ENABLE C PROGRAMING
  (c++-mode . lsp-deferred)           ; ENABLE C++ PROGRAMING
  (c-or-c++-mode . lsp-deferred)      ; ENABLE C/C++ PROGRAMING
  (sh-mode . lsp-deferred)            ; ENABLE BASH SHELL SCRIPT
  :config
  ;; if you want which-key integration
  (lsp-enable-which-key-integration t)
  ;; The path to lsp-mode needs to be added to load-path as well as the
  ;; path to the `clients' subdirectory.
  (add-to-list 'load-path (expand-file-name "lib/lsp-mode" user-emacs-directory))
  (add-to-list 'load-path (expand-file-name "lib/lsp-mode/clients" user-emacs-directory))
  ;; Header breadcumb Function
  (defun ms/lsp-mode-setup ()
	(setq lsp-headerline-breadcrumb-segments '(path-up-to-project file symbols))
	(lsp-headerline-breadcrumb-mode))
  )

;; Optionaly
;; lsp-ui Enhance UI
(use-package lsp-ui
  :hook (lsp-mode . lsp-ui-mode))
;; lsp-treemacs integration
(use-package lsp-treemacs
  :after lsp)
