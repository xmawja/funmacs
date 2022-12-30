;;; lang-config.el -*- lexical-binding: t; -*-
;; This file has been generated from init.el file. DO NOT EDIT.
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

;; load parent directorys PATH.
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/c/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/cpp/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/go/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/lua/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/markdown/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/ocaml/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/python/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/rust/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/sh/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/toml/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/web/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/yaml/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/zig/")

;; available programming languages.
;; c programing
(load-library "c")
;; c++ language
(load-library "cpp")
;; golang programing
(load-library "go")
;; lua language
(load-library "lua")
;; markdown language
(load-library "markdown")
;; ocaml ml language
(load-library "ocaml")
;; python 3 language
(load-library "python3")
;; rust language
(load-library "rust")
;; shell script languages
(load-library "sh")
;; toml language
(load-library "toml")
;; web-mode
;; (load-library "web")  ;; uncommenced if your using 'lsp-mode'
;; css style language
(load-library "css")
;; html markup language
(load-library "html")
;; javascript/typescript language
(load-library "javascript")
;; json object notation
(load-library "json")
;; yaml language
(load-library "yaml")
;; zig language
(load-library "zig")
