;;; toml.el -*- lexical-binding: t; -*-
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

;; Enable toml-mode.el
(use-package toml-mode
  :straight t
  :hook
  ;; uncommented if youre using eglot.
  (toml-mode . eglot-ensure)
  :config
  ;; load rust cargo PATH because the lsp backend live there
  (add-to-list 'exec-path "~/.cargo/bin")
  ;; load taplo the lsp backend
  ;; (add-to-list 'eglot-server-programs '(toml-mode . ("taplo")))
  (with-eval-after-load 'eglot
    (add-to-list 'eglot-server-programs
                 '(toml-mode . ("taplo"  "--stdio"))))
  ) ;; end toml-mode.el

;; end 'toml-mode' file.
