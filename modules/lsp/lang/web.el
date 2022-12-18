;;; web-mode.el -*- lexical-binding: t; -*-
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

;; Enable web-mode.el
(use-package web-mode
  :mode
  "\\.html?\\'" ;; html support
  "\\.css?\\'"  ;; css support
  :hook ((web-mode . (lambda ()
                       (when
						 ;; auto emerge emmet-ls
						 (require 'emmet-ls nil t)
						 ;; auto emerge lsp-html
						 (require 'lsp-html nil t)
						 ;; auto emerge css-ls
						 (require 'css-ls nil t)
                         (lsp-deferred))))))
