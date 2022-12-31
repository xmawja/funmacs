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
  );end use-package hydra

;; hydra-posframe.el
(use-package hydra-posframe
  :load-path hydra-posframe-p
  :config
  (require 'hydra-posframe)
  :custom
  (hydra-posframe-parameters
   '((left-fringe . 4) (right-fringe . 4) (top-fringe . 4) (bottom-fringe . 4) (height . 18) (width . 105) (min-height . 17) (max-height . 30) (top . 25)))
  :custom-face
  (hydra-posframe-border-face ((t (:background "#ffffff"))))
  (hydra-posframe-face ((t (:background-color "#6272a4"))))
  :hook
  (after-init . hydra-posframe-enable)
  );end use-package-hydra-posframe

;; pretty-hydra.el
(use-package pretty-hydra
  :config
  (require 'pretty-hydra)
  );end use package pretty hyrda

;; title generator
(require 's)
(require 'all-the-icons)
(with-eval-after-load 'all-the-icons
  (declare-function all-the-icons-faicon 'all-the-icons)
  (declare-function all-the-icons-fileicon 'all-the-icons)
  (declare-function all-the-icons-material 'all-the-icons)
  (declare-function all-the-icons-octicon 'all-the-icons)
  )

;; with-faicon function allows an icon in hydra title. Requires following requires and aliases. To omit don't include 'with-faicon' in appearance-title
;; define an icon function with all-the-icons-faicon
;; to use filecon, etc, define same function with icon set
(defun with-faicon (icon str &rest height v-adjust)
  (s-concat (all-the-icons-faicon icon :v-adjust (or v-adjust 0) :height (or height 1)) " " str))
;; filecon
(defun with-fileicon (icon str &rest height v-adjust)
  (s-concat (all-the-icons-fileicon icon :v-adjust (or v-adjust 0) :height (or height 1)) " " str))
