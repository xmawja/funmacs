;;; org-super-agenda.el -*- lexical-binding: t; -*-
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

;; Enable 'org-super-agenda.el'
(use-package org-super-agenda
  :after org-agenda
  :config
  ;; Enable org-super-agenda
  (org-super-agenda-mode)
  (setq org-agenda-block-separator ?―)
  ;; Customise the agenda view
  (setq org-agenda-custom-commands
        '(("o" "Overview"
           ((agenda "")
            (todo "NEXT"
                  ((org-super-agenda-groups
                    '((:auto-map funmacs/agenda-auto-group-title-olp)))))
            (todo "TODO|HOLD|NEXT|WAIT"
                  ((org-agenda-overriding-header
                    "Every TASKS under the sun")
                   (org-super-agenda-groups
                    '((:auto-map funmacs/agenda-auto-group-title-olp)))))
            (todo "REVIEW"
                  ((org-agenda-overriding-header "Study")
                   (org-super-agenda-groups
                    '((:auto-map funmacs/agenda-auto-group-title-olp)))))
            (tags-todo "writings|blog"
                       ((org-agenda-overriding-header "Writings")
                        (org-super-agenda-groups
                         '((:auto-map funmacs/agenda-auto-group-title-olp)))))
            (todo "IDEA"
                  ((org-agenda-overriding-header "Ideas")
                   (org-super-agenda-groups
                    '((:auto-map funmacs/agenda-auto-group-title-olp)))))
            ))))

  (defun funmacs/agenda-auto-group-title-olp (item)
    (-when-let* ((marker (or (get-text-property 0 'org-marker item)
                             (get-text-property 0 'org-hd-marker item)))
                 (buffer (->> marker marker-buffer ))
                 (title (cadar (org-collect-keywords '("title"))))
                 (filledtitle (if (> (length title) 70)
                                  (concat (substring title 0 70)  "...") title))
                 (tags (org-get-tags))
                 (olp (org-super-agenda--when-with-marker-buffer
                       (org-super-agenda--get-marker item)
                       (s-join " → " (org-get-outline-path)))))
      (concat (if (not (member "journal" tags))
                  (concat "「" filledtitle "」" ) "    ") olp)))

  ;; Make evil keymaps works on org-super-agenda headers
  (after! evil-org-agenda
          (setq org-super-agenda-header-map (copy-keymap evil-org-agenda-mode-map)))
  ;; Change header face to make it standout more
  (custom-set-faces!
   `(org-todo
     :weight bold :foreground ,(doom-color 'blue))
   `(+org-todo-active
     :weight bold :foreground ,(doom-color 'green))
   `(org-super-agenda-header
     :inherit 'variable-pitch
     :weight bold :foreground ,(doom-color 'cyan))
   `(org-agenda-structure
     :inherit 'variable-pitch
     :weight bold :foreground ,(doom-color 'blue))
   ) ;; End
