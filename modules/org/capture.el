;;; org-capture.el -*- lexical-binding: t; -*-
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

;; Enable org-capture.el
(use-package org-capture
  :ensure nil
  :straight (:type built-in)
  ;; :require org
  :bind (:map global-map
              ("C-c c" . org-capture)        ;; capture notes
              )
  :config
  (setq org-capture-templates
        '(
          ("t"                               ;; hotkey
           "Tasks for a day"                 ;; name
           entry                             ;; type
           ;; headline type and title
           ;; set the default notes file places
           ;; (setq org-default-notes-file (concat org-directory "/notes.org"))
           (file+headline "~/Dropbox/org/tasks.org" "Tasks")
           "* TODO %?\n- Added: %U %i\n  %a")
          )
        )
  ) ;; end org-capture.el

;; end 'org-capture' file.
