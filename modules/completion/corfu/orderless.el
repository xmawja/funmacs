;;; orderless.el -*- lexical-binding: t; -*-
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
;; see <https://www.gnu.org/licenses/>.

;; Optionally use the `orderless' completion style.
(use-package orderless
  :init
  ;; Configure a custom style dispatcher (see the Consult wiki)
  ;; (setq orderless-style-dispatchers '(+orderless-dispatch)
  ;;       orderless-component-separator #'orderless-escapable-split-on-space)
  (setq completion-styles '(orderless basic)
        completion-category-defaults nil
        completion-category-overrides '((file (styles . (partial-completion)))))
  ) ;; end orderless.el

;; end 'orderless' file.
