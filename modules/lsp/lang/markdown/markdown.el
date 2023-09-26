;;; markdown.el -*- lexical-binding: t; -*-
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

;; Enable markdown-mode.el
(use-package markdown-mode
  :straight t
  :hook
  ;; uncomment and choose your prefared lsp packend server.
  ;; lsp-mode.
  ;;(markdown-mode . lsp-deferred)
  ;; eglot mode.
  (markdown-mode . eglot-ensure)
  :mode
  (("README\\.md\\'" . gfm-mode)
   ("\\.md\\'" . markdown-mode)
   ("\\.mdx\\'" . markdown-mode))       ;; Markdown for the component era.
  ("\\.markdown\\'" . markdown-mode)
  ;;:commands (markdown-mode gfm-mode)
  :init
  ;; tools command to preview.
  ;; ;; for simple things multimarkdown
  ;; (setq markdown-command "multimarkdown")
  ;; ;; pandoc 
  ;; (setq markdown-command "pandoc -t html5")
  :config
  ;; ;; load marksman directory to be placed of.
  ;; (add-to-list 'exec-path "~/.local/bin")
  ;; uncomment if you are using lsp-mode.
  ;;(require 'lsp-marksman)
  ;; configuration for eglot using marksman
  (with-eval-after-load 'eglot
    (add-to-list 'eglot-server-programs
                 '(markdown-mode . ("marksman" "--stdio"))))
  ) ;; end markdown-mode.el

;; end 'markdown-mode' file.
