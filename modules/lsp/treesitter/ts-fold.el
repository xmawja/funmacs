;;; typescript-conf.el -*- lexical-binding: t; -*-
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


;; load library 'PATH'
;; Code-folding using tree-sitter
;; ts-fold builds on top of elisp-tree-sitter
;; to provide code folding based on the tree-sitter syntax tree.
(use-package ts-fold
  :straight (ts-fold :type git :host github :repo "emacs-tree-sitter/ts-fold")
  :config
  (global-ts-fold-mode)
  (global-ts-fold-indicators-mode)
  :bind
  (:map global-map
        ("C-c f O" . ts-fold-open-all)
        ("C-c f o" . ts-fold-open-recursively)
        ("C-c f C" . ts-fold-close-all)
        ("C-c f c" . ts-fold-close)
        ("C-c f z" . ts-fold-toggle))
  ) ;; End

;; End 'ts-fold.el' file.
