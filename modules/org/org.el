;;; org-mode.el -*- lexical-binding: t; -*-
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
(use-package org
  ;; ignore org.el from pull using package.el
  :ensure nil
  ;; ignore org.el from pull using straight.el.
  :straight (:type built-in)
  :after org
  :hook
  (after-init . org-mode)
  ;; ;; modern org-mode org-modern
  ;; ;; Option 1: Per buffer
  ;; (org-mode . org-modern-mode)
  ;; (org-agenda-finalize . org-modern-agenda)
  :init
  ;;(setq-default major-mode 'org-mode) if nesesery
  ;; set the default notes file places
  ;; (setq org-default-notes-file (concat org-directory "/notes.org"))
  (setq org-default-notes-file (concat org-directory "/notes.org"))
  ;; set the deafault org directory
  (setq org-directory (expand-file-name "~/Documents/org"))
  ;; activaae loge done
  (setq org-log-done t)
  ;; closing timestamp or next line
  (setq org-log-done 'time)
  ;; take a note before closing the task.
  (setq org-log-done 'note)
  ;; Pamodoro timer tone
  (setq org-clock-sound "~/.emacs.d/assets/sound/ding.wav")
  :config
  (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
  ) ;; end org-mode.el

;; end 'org-mode' file.
