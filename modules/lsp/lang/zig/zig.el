;;; zig-mode.el -*- lexical-binding: t; -*-
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

;; Enable zig-mode.el
(use-package zig-mode
  :hook
  ;; uncommented if youre using eglot.el
  (zig-mode . eglot-ensure)
  :config
  ;; set where zig zls PATH
  (add-to-list 'exec-path "~/.zig/zls/zig-out/bin")
  ;; ;; load zls path from zig-mode function
  ;; (setq lsp-zig-zls-executable "~/.zig/zls/zig-out/bin")
  ;; ;; setup zls manualy
  ;; (unless (version< emacs-version "24")
  ;; (add-to-list 'load-path "~/.zig/zls/zig-out/bin")
  ;; (autoload 'zig-mode "zig-mode" nil t)
  ;; (add-to-list 'auto-mode-alist '("\\.zig\\'" . zig-mode)))
  )
