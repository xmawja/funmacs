;;; modules-conf.el -*- lexical-binding: t; -*-
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
;; see <https://www.gnu.org/licenses/.>

;; load packages PATH
(add-to-list 'load-path "~/.emacs.d/modules/")
(add-to-list 'load-path "~/.emacs.d/modules/completion/")
(add-to-list 'load-path "~/.emacs.d/modules/eww/")
(add-to-list 'load-path "~/.emacs.d/modules/lsp/")
(add-to-list 'load-path "~/.emacs.d/modules/org/")
(add-to-list 'load-path "~/.emacs.d/modules/treemacs/")
(add-to-list 'load-path "~/.emacs.d/modules/ui/")

;; load modules config.
;; modules-completion-conf elisp
(load-library "completion-conf")
;; modules-eww-browser elisp
(load-library "eww-conf")
;; modules-lsp elisp
(load-library "lsp-conf")
;; modules-org elisp
(load-library "org-conf")
;; modules-treemacs elisp
(load-library "treemacs-conf")
;;modules-ui elisp
(load-library "ui-conf")

;; load librarys 'PATH'
;; modules-benchmark elisp
(load-library "benchmark-init")
;; ;; modules-flycheck elisp
;; (load-library "flycheck")
;; ;; modules-hydra elisp
;; (load-library "hydra")
;; modules-magit elisp
(load-library "magit")
;; ;; modules-projectile elisp
;; (load-library "projectile")
;; modules-treemacs elsip
(load-library "treemacs")
;; modules-undo-tree elisp
(load-library "undo-tree")
;; modules-vterm elisp
(load-library "vterm")
;; modules-yasnippet elisp
(load-library "yasnippet")
