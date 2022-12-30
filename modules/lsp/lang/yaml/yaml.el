;;; yaml.el -*- lexical-binding: t; -*-
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

;; Enable yaml-mode.el
(use-package yaml-mode
  :straight t
  :hook
  ;; ;; uncommented if your using lsp-mode.
  ;; (yaml-mode . lsp-deferred)
  ;; uncommented if your using eglot.
  (yaml-mode . eglot-ensure)
  :config
  ;; install the server "localy" first.
  ;; 'npm' install -g yaml-language-server'
  ;; load yaml-language-server backend
  (with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '(yaml-mode . ("yaml-language-server" "--stdio"))))
  )
