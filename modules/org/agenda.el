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
  (setq org-agenda-files '("~/Documents/org/agenda.org" ))
  ;; Setting the TODO keywords
  (setq org-todo-keywords
        '((sequence
           "TODO(t)"                    ;What needs to be done
           "NEXT(n)"                    ;A project without NEXTs is stuck
           "|"
           "DONE(d)")
          (sequence
           "REPEAT(e)"                    ;Repeating tasks
           "|"
           "DONE")
          (sequence
           "HOLD(h)"                    ;Task is on hold because of me
           "PROJ(p)"                    ;Contains sub-tasks
           "WAIT(w)"                    ;Tasks delegated to others
           "REVIEW(r)"                  ;Daily notes that need reviews
           "IDEA(i)"                    ;Daily notes that need reviews
           "|"
           "STOP(c)"                    ;Stopped/cancelled
           "EVENT(m)"                   ;Meetings
           ))
        org-todo-keyword-faces
        '(("[-]"  . +org-todo-active)
          ("NEXT" . +org-todo-active)
          ("[?]"  . +org-todo-onhold)
          ("REVIEW" . +org-todo-onhold)
          ("HOLD" . +org-todo-cancel)
          ("PROJ" . +org-todo-project)
          ("DONE"   . +org-todo-cancel)
          ("STOP" . +org-todo-cancel)))
  ;; Appearance
  (setq org-agenda-span 20
        org-agenda-prefix-format       " %i %?-2 t%s"
        org-agenda-todo-keyword-format "%-6s"
        org-agenda-current-time-string "ᐊ┈┈┈┈┈┈┈ Now"
        org-agenda-time-grid '((today require-timed remove-match)
                               (0900 1200 1400 1700 2100)
                               "      "
                               "┈┈┈┈┈┈┈┈┈┈┈┈┈")
        )
  ;; Clocking
  (setq org-clock-persist 'history
        org-columns-default-format "%50ITEM(Task) %10CLOCKSUM %16TIMESTAMP_IA"
        org-agenda-start-with-log-mode t)
  (org-clock-persistence-insinuate)
  ) ;; End

;; ;;
;; (use-package org-habit
;;   :config
;;   (setq org-habit-show-all-today t))

;; (use-package org-timer
;;   :config
;;   (setq org-clock-sound (concat doom-private-dir "OOT_Secret.wav")))

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
     :weight bold :foreground ,(doom-color 'blue)))
  ) ;; end org-agenda.el

;; end 'org-agenda' file.
