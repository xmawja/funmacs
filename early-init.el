;;; early-init.el -*- lexical-binding: t; -*-
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

;;; Commentary:
;; Provides early initialization for Emacs 27.1+ Do not initialize the
;; package manager.  This is done in `init.el'.  The optimization of
;; the early init comes from both Doom Emacs' config as well as Prot's
;; config.
;; See https://github.com/hlissner/doom-emacs/blob/develop/early-init.el
;; See https://protesilaos.com/dotemacs/


;; Defer garbage collection further back in the startup process
(setq gc-cons-threshold most-positive-fixnum
      gc-cons-percentage 0.6)

;; fully redraw the display before it processes queued input events.
;; This may have slight performance implications;
;; if you’re aggressively mouse scrolling a document or rely on your keyboard’s;
;; auto repeat feature. For most of us, myself included,
;; it’s probably a no-brainer to switch it on.
(setq redisplay-dont-pause t)

;; In Emacs 27+, package initialization occurs before `user-init-file' is
;; loaded, but after `early-init-file'. We want to keep from loading at startup.
;; disable package.el load at startup if you use somthing like straight.el.
(setq package-enable-at-startup nil)

;; Set fonts to be used as default to speed init.
(set-face-attribute 'default nil :font "Fira Code Retina" :height 120)

;; Prevent the glimpse of un-styled Emacs by disabling these UI elements early.
(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)
(push '(mode-line-format . 0) default-frame-alist)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode -1)

;; Create a package-quickstart.el
(setq package-quickstart t)

;; Resizing the Emacs frame can be a terribly expensive part of changing the
;; font. By inhibiting this, we easily halve startup times with fonts that are
;; larger than the system default.
(setq frame-inhibit-implied-resize t)

;; Ignore X resources; its settings would be redundant with the other settings
;; in this file and can conflict with later config (particularly where the
;; cursor color is concerned).
(advice-add #'x-apply-session-resources :override #'ignore)

;;(setq native-comp-async-report-warnings-errors nil) 	; Stop showing compilation warnings on startup

;; Make the initial buffer load faster by setting its mode to fundamental-mode
(customize-set-variable 'initial-major-mode 'fundamental-mode)

;; Reset garbage collector limit after init process has ended (8Mo)
(add-hook 'after-init-hook
          #'(lambda () (setq gc-cons-threshold (* 8 1024 1024))))
