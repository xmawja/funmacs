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
;;(add-to-list 'load-path "~/.emacs.d/modules/org/")
(add-to-list 'load-path "~/.emacs.d/modules/ui/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/lang/")
(add-to-list 'load-path "~/.emacs.d/modules/completion/")
(add-to-list 'load-path "~/.emacs.d/modules/completion/corfu/")
(add-to-list 'load-path "~/.emacs.d/modules/completion/company/")

;; core elisp 
(load-library "settings")
(load-library "straight")
(load-library "keymaps")

;; modules elisp
;; (load-library "org")
(load-library "vertico")
(load-library "magit")
(load-library "treemacs")
(load-library "vterm")
;;(load-library "projectile")
(load-library "undo-tree")
(load-library "yasnippet")
;;(load-library "flycheck")
(load-library "benchmark-init")

;;modules-ui elisp
(load-library "themes")
(load-library "all-the-icons")
(load-library "dashboard")
(load-library "modeline")

;; modules-completion elisp
;; complation-corfu
(load-library "corfu")
;;complation-company
;; (load-library "company")

;; modules-lsp elisp
(load-library "eglot")
;;(load-library "lsp")
;;(load-library "dap")

;; lsp-lang elisp
(load-library "rust")
(load-library "golang")
(load-library "markdown")
(load-library "web")
(load-library "javascript")

