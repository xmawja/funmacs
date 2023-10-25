;;; nerd-icons.el -*- lexical-binding: t; -*-
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

;;; code

;; Enable 'nerd-icons'
(use-package nerd-icons
  :straight t
  :hook
  ;; after init
  (after-init . nerd-icons-mode)
  :init
  (require 'treemacs-nerd-icons)
  (treemacs-load-theme "nerd-icons")
  :if (display-graphic-p)
  :bind
  (:map global-map
         ("M-c i"       . nerd-icons-insert)
        )
  ;; :custom
  ;; The Nerd Font you want to use in GUI
  ;; "Symbols Nerd Font Mono" is the default and is recommended
  ;; but you can use any other Nerd Font if you want
  ;; (nerd-icons-font-family "Symbols Nerd Font Mono")
  ) ;; end 'nerd-icons'


;; ;; Shows icons
;; (use-package nerd-icons-dired
;;   :diminish
;;   :when (icons-displayable-p)
;;   :custom-face
;;   (nerd-icons-dired-dir-face ((t (:inherit nerd-icons-dsilver :foreground unspecified))))
;;   :hook (dired-mode . nerd-icons-dired-mode))
