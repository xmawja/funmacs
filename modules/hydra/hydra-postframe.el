;;; hydra-postframe.el -*- lexical-binding: t; -*-
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
