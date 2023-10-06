;;; modules-conf.el -*- lexical-binding: t; -*-
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

;; Enable 'emmet.el'
;;; Code:

(use-package emmet-mode
  :straight t
  :hook
  (html-mode . emmet-mode)
  (sgml-mode-hook . emmet-mode) ;; Auto-start on any markup modes
  (css-mode-hook  . emmet-mode) ;; enable Emmet's css abbreviation.
  (emmet-jsx-major-modes . js-mode)
  (emmet-jsx-major-modes . jsx-mode)
  (emmet-jsx-major-modes . rjsx-mode)
  (emmet-jsx-major-modes . js-jsx-mode)
  (emmet-jsx-major-modes . js2-jsx-mode)
  ) ;; End

;; End 'emmet-mode.el' file.
