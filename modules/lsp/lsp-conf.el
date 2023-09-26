;;; lsp-conf.el -*- lexical-binding: t; -*-
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
;; see <https://www.gnu.org/licenses/.>

;; load packages 'PATH'
(add-to-list 'load-path "~/.emacs.d/modules/lsp/eglot/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/treesitter/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lsp-mode/")


;; load library 'PATH'
;; modules-lsp-eglot elisp
(load-library "eglot-conf")
;; modules-treesitter elisp
(load-library "treesitter-conf")
;; modules-lsp-lang elisp
(load-library "lang-conf")
;; ;; modules-lsp-mode elisp
;; (load-library "lsp-mode-conf")

;; end 'lsp-conf' file.
