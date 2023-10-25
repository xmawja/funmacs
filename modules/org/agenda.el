;;; org-agenda.el -*- lexical-binding: t; -*-
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

;; Enable org-mode.el
(use-package org-agenda
  ;; ignore org.el from pull using package.el
  :ensure nil
  ;; ignore org.el from pull using straight.el.
  :straight (:type built-in)
  ;; :require org
  :bind
  (:map global-map
		    ("C-c a" . org-agenda)         ;; open agenda
        ("C-c l" . org-store-link)     ;; stored agenda
        )
  :config
  ;; set the default agenda files directory
  (setq org-agenda-files '("~/Dropbox/org/agenda.org" ))
  ) ;; end org-agenda.el

;; end 'org-agenda' file.
