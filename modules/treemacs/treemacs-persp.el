;;; treemacs-persp.el -*- lexical-binding: t; -*-
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
;; see <https://www.gnu.org/licenses/.>

;; The Perspective package provides multiple named workspaces (or "perspectives") in Emacs,
;; similar to multiple desktops in window managers like Awesome and XMonad, and Spaces on the Mac.
(use-package treemacs-persp          ; treemacs-perspective if you use perspective.el vs. persp-mode
  :ensure t
  :after (treemacs persp-mode)       ; or perspective vs. persp-mode
  :config (treemacs-set-scope-type 'Perspectives)
  ) ;; end treemacs-persp.el

;; end 'treemacs-persp' file.
