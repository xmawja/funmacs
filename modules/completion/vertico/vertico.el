;;; vertico.el -*- lexical-binding: t; -*-
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

;; Enable vertico
(use-package vertico
  :straight (vertico :files (:defaults "extensions/*")
                     :includes
                     (vertico-buffer         ;; vertico-buffer-mode to display Vertico in a separate buffer.
                      vertico-directory      ;; Commands for Ido-like directory navigation.
                      vertico-flat           ;; vertico-flat-mode to enable a flat, horizontal display.
                      vertico-grid           ;; vertico-grid-mode to enable a grid display.
                      vertico-indexed        ;; vertico-indexed-mode to select indexed candidates with prefix arguments.
                      vertico-mouse          ;; vertico-mouse-mode to support for scrolling and candidate selection.
                      vertico-multiform      ;; Configure Vertico modes per command or completion category.
                      vertico-quick          ;; Commands to select using Avy-style quick keys.
                      vertico-repeat         ;; The command vertico-repeat repeats the last completion session.
                      vertico-reverse        ;; vertico-reverse-mode to reverse the display.
                      vertico-unobtrusive    ;; vertico-unobtrusive-mode displays only the topmost candidate.
                      ))
  :init
  (vertico-mode)

  ;; Different scroll margin
  ;; (setq vertico-scroll-margin 0)

  ;; Show more candidates
  ;; (setq vertico-count 20)

  ;; Grow and shrink the Vertico minibuffer
  ;; (setq vertico-resize t)

  ;; Optionally enable cycling for `vertico-next' and `vertico-previous'.
  ;; (setq vertico-cycle t)
  )

;; Persist history over Emacs restarts. Vertico sorts by history position.
(use-package savehist
  :straight t
  :init
  (savehist-mode))
