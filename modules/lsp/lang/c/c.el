;;; c.el -*- lexical-binding: t; -*-
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

;; Enable c-mode.el
(use-package c-mode
  :ensure nil                   ;; don't pull anything its builtin
  :straight (:type built-in)    ;; don't pull anything its builtin
  :hook
  ;; set to use eglot.el
  ;; uncommented if you're using eglot.el
  (c-mode . eglot-ensure)
  :config
  ;; define the c lsp backend server.
  (add-to-list 'eglot-server-programs '(c-mode "clangd"))
  )
