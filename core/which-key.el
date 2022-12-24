;;; which-key.el -*- lexical-binding: t; -*-
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

;; Enable which-key.el
(use-package which-key
  :straight t
  :init
  (which-key-mode)
  (setq which-key-idle-delay 0.3)
  (which-key-setup-minibuffer)
  :hook
  (after-init . which-key-mode))

;; global keybinding
;; recompile
(global-set-key (kbd "<f12>") #'recompile)

;; MAKE ESC QUITE PROMPTE
;;(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
