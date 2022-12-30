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
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/web/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/lua/")

;; load programming languages.
(load-library "c")
(load-library "cpp")
(load-library "sh")
(load-library "rust")
;; (load-library "web")  ;; uncommenced if your using 'lsp-mode'
(load-library "html")
(load-library "css")
(load-library "javascript")
(load-library "golang")
(load-library "python3")
(load-library "markdown")
(load-library "yaml")
(load-library "toml")
(load-library "zig")
(load-library "ocaml")
(load-library "lua")
