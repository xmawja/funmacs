;;; settings.el -*- lexical-binding: t; -*-
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

;; USER info
(setq user-full-name "Muja Siyam"
      user-mail-address "contact@muja.dev")

;; UTF-8
(set-default-coding-systems 'utf-8)     ; Default to utf-8 encoding
(prefer-coding-system       'utf-8)     ; Add utf-8 at the front for automatic detection.
(set-default-coding-systems 'utf-8)     ; Set default value of various coding systems
(set-terminal-coding-system 'utf-8)     ; Set coding system of terminal output
(set-keyboard-coding-system 'utf-8)     ; Set coding system for keyboard input on TERMINAL
(set-language-environment "UTF-8")       ; Set up multilingual environment

;; PERFORMANCE
;;(setq gc-cons-threshold (* 100 1024 1024)) ; Increase garbage collector threshold 1MB
;;(setq gc-cons-threshold 100000000)         ; Increase garbage collector threshold 100MB

;; ENABLE LINE NUMBERS
(global-display-line-numbers-mode)

;; DISABLE MENU TOOLBAR SCROLBAR
;;(menu-bar-mode -1)                      ; disable menu bar
;;(toggle-scroll-bar -1)                  ; disable scroll bar
;;(tool-bar-mode -1)                      ; diasble tool bar
;;(set-fringe-mode 10)                    ; give some breathing room

;; CHANGE TAB SIZE
;;(setq-default tab-width 4)		        ; enable indent global
;;(setq-default c-basic-offset 4)         ; enable indent for C/C++

;; MAKE ESC QUITE PROMPTE
;;(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; ENABLE BULTIN COPLATION
;;(setq tab-always-indent 'complete)
;;(add-to-list 'completion-styles 'initials t)

;; Set up the visible bell
(setq visible-bell t)

;; Set default connection mode to SSH
(setq tramp-default-method "ssh")

;; autocomplete paired brackets
(electric-pair-mode 1)

