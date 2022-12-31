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
  :hook
  ;; set yasnippet for prog-mode as minor mode.
  (prog-mode . yas-minor-mode)
  :config
  ;; use yasnippet as a global mode.
  ;;(yas-global-mode 1)
  ;; load yasnippet by buffer to increse performance.
  (yas-reload-all)
  ;; user snippets directory
  (setq-default yas-snippet-dirs '("~/.emacs.d/snippets"))
  )
