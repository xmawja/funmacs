;;; lang-config.el -*- lexical-binding: t; -*-
;; This file has been generated from init.el file. DO NOT EDIT.
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

;; load parent directorys PATH.
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/c/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/conf/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/cpp/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/css/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/docker/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/elisp/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/go/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/html/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/javascript/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/json/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/lua/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/markdown/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/nix/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/ocaml/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/php/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/python/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/rust/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/sh/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/toml/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/typescript/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/web/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/yaml/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/zig/")

;; available programming languages.
;; c programing
(load-library "c-conf")
;; conf files
(load-library "conf-conf")
;; c++ language
(load-library "cpp-conf")
;; css style language
(load-library "css-conf")
;; docker style language
(load-library "docker-conf")
;; emacs lisp language
(load-library "elisp-conf")
;; golang programing
(load-library "go-conf")
;; html markup language
(load-library "html-conf")
;; javascript/typescript language
(load-library "javascript-conf")
;; json object notation
(load-library "json-conf")
;; lua language
(load-library "lua-conf")
;; markdown language
(load-library "markdown-conf")
;; nix language
(load-library "nix-conf")
;; ocaml ml language
(load-library "ocaml-conf")
;; php language
(load-library "php-conf")
;; python 3 language
(load-library "python-conf")
;; rust language
(load-library "rust-conf")
;; shell script languages
(load-library "sh-conf")
;; toml language
(load-library "toml-conf")
;; typescript language
(load-library "typescript-conf")
;; web-mode
;; (load-library "web-conf")  ;; uncommenced if your using 'lsp-mode'
;; yaml language
(load-library "yaml-conf")
;; zig language
(load-library "zig-conf")


;; end 'lang-conf' file.
