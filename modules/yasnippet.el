;;; yasnippet.el -*- lexical-binding: t; -*-
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

;; Enable yasnippet.el
(use-package yasnippet
  :straight t
  :config
  (yas-global-mode 1) ; activate yaggsnippet as global mode
  :hook
  (lsp-mode . yas-minor-mode)
  (eglot-mode . yas-minor-mode)
  )
;; YASNIPPET-SNIPPETS
(use-package yasnippet-snippets
  :straight t)
