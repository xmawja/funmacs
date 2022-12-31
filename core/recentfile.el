;;; recentf-mode.el -*- lexical-binding: t; -*-
;; This file has been generated from init.el file. DO NOT EDIT.
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

;; Enable recentf.el
(use-package recentf
  ;; :ensure nil
  ;; :straight (:type built-in)
  :config
  (setq recentf-max-saved-items 40
        recentf-max-menu-items 15
        recentf-menu-open-all-flag t
        ;; disable recentf-cleanup on Emacs start, because it can cause
        ;; problems with remote files
        recentf-cleanup-auto 'never)
  (add-to-list 'recentf-exclude  (expand-file-name package-user-dir))
  ;; (add-to-list 'recentf-exclude no-littering-var-directory)
  ;; (add-to-list 'recentf-exclude no-littering-etc-directory)
  :hook (after-init . recentf-mode)
  )
