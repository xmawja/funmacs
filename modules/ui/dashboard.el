;;; dashboard.el -*- lexical-binding: t; -*-
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

;; Enable dashboard.el
(use-package dashboard
  :straight t
  :config
  (dashboard-setup-startup-hook)
  :init
  ;; show Dashboard in frames created with emacsclient -c
  (setq initial-buffer-choice (lambda () (get-buffer-create "*dashboard*")))
  ;; add icons to the widget headings and their items
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-file-icons t)
  ;; Set the title
  (setq dashboard-banner-logo-title "Welcome to Funmacs")
  ;; Content is not centered by default. To center, set
  (setq dashboard-center-content t)
  ;; To customize which widgets are displayed
  (setq dashboard-items '((recents  . 5)
                        (bookmarks . 5)
                        (projects . 5)
                        (agenda . 5)
                        (registers . 5)))
  )


