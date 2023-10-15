;;; org-roam.el -*- lexical-binding: t; -*-
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

;; ;; Enable 'org-roam-capture.el' 
;; (use-package org-roam-capture
;;   :config
;;   (setq org-roam-capture-templates
;;         `(("d" "default" plain "%?"
;;            :target
;;            (file+head "${slug}_%<%Y-%m-%d--%H-%M-%S>.org"
;;                       "#+title: ${title}\n#+created: %U\n#+filetags: %(completing-read \"Function tags: \" funmacs/org-roam-function-tags)\n#+startup: overview")
;;            :unnarrowed t)))
;;   ) ;; End

;; (use-package org-roam-dailies
;;   :config
;;   (setq org-roam-dailies-directory "journal/"
;;         org-roam-dailies-capture-templates
;;         '(("d" "daily" entry "* %?"
;;            :target
;;            (file+head "%<%Y-%m-%d>.org"
;;                       "#+title: %<%Y-%m-%d %a>\n#+filetags: journal\n#+startup: overview\n#+created: %U\n\n")
;;            :immediate-finish t)))
;;   (map! :leader
;;         :prefix "n"
;;         (:prefix ("j" . "journal")
;;                  :desc "Arbitrary date" "d" #'org-roam-dailies-goto-date
;;                  :desc "Today"          "j" #'org-roam-dailies-goto-today
;;                  :desc "Tomorrow"       "m" #'org-roam-dailies-goto-tomorrow
;;                  :desc "Yesterday"      "y" #'org-roam-dailies-goto-yesterday))
;;   ) ;; End

(use-package websocket
  :after org-roam
  ) ;; End

(use-package org-roam-ui
  :after org-roam
  :commands (org-roam-ui-mode)
  ) ;; End
