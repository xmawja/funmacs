;;; lua.el -*- lexical-binding: t; -*-
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
(use-package lua-mode
  :straight t
  ;; :requires project
  :hook
  ;; lua eglot
  (lua-mode . eglot-ensure)
  :config
  ;; install 'lua-lsp'
  ;; luarocks install --server=https://luarocks.org/dev lua-lsp --local
  ;; PATH to local lua-lsp
  (add-to-list 'exec-path "~/.luarocks/bin")
  ;; load 'lua-lsp' backend
  (with-eval-after-load 'eglot
    (add-to-list 'eglot-server-programs
                 '(lua-mode . ("lua-lsp" "--stdio"))))
  ) ;; end lua-mode.el

;; end 'lua-mode' file.
