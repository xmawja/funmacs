;;; hydra.el -*- lexical-binding: t; -*-
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


;; Enable hydra.el
(use-package hydra
  :ensure t
  :straight t
  :config
  ;; title generator
  (require 's)
  (require 'all-the-icons)
  (with-eval-after-load 'all-the-icons
    (declare-function all-the-icons-faicon 'all-the-icons)
    (declare-function all-the-icons-fileicon 'all-the-icons)
    (declare-function all-the-icons-material 'all-the-icons)
    (declare-function all-the-icons-octicon 'all-the-icons)
    )
  :custom
  ;; with-faicon function allows an icon in hydra title.
  ;; Requires following requires and aliases.
  ;; To omit don't include 'with-faicon' in appearance-title
  ;; define an icon function with all-the-icons-faicon
  ;; to use filecon, etc, define same function with icon set
  (defun with-faicon (icon str &rest height v-adjust)
    (s-concat (all-the-icons-faicon
               icon :v-adjust (or v-adjust 0) :height (or height 1)) " " str))
  ;; filecon
  (defun with-fileicon (icon str &rest height v-adjust)
    (s-concat (all-the-icons-fileicon
               icon :v-adjust (or v-adjust 0) :height (or height 1)) " " str))
  );end use-package hydra
