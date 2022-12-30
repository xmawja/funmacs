;;; init.el -*- lexical-binding: t; -*-
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

;; import directorys
(add-to-list 'load-path "~/.emacs.d/core/")
(add-to-list 'load-path "~/.emacs.d/modules/")
(add-to-list 'load-path "~/.emacs.d/modules/org/")
(add-to-list 'load-path "~/.emacs.d/modules/ui/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/eglot/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lsp-mode/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/")
(add-to-list 'load-path "~/.emacs.d/modules/completion/corfu/")
(add-to-list 'load-path "~/.emacs.d/modules/completion/vertico")
(add-to-list 'load-path "~/.emacs.d/modules/completion/company/")

;; core elisp
(load-library "core-conf")

;; modules elisp
(load-library "modules-conf")

;; modules-org elisp
(load-library "org-conf")

;;modules-ui elisp
(load-library "ui-conf")

;; modules-lsp-eglot elisp
(load-library "eglot-conf")
;; modules-lsp-lsp-mode elisp
;; (load-library "lsp")
;; (load-library "dap")
;; modules-lsp-lang elisp
(load-library "lang-conf")

;; modules-completion-corfu elisp
(load-library "corfu-conf")
;; modules-completion-vertigo elisp
(load-library "vertico-conf")
;; ;; modules-completion-company elisp
;; (load-library "company")
