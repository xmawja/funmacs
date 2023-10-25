;;; settings.el -*- lexical-binding: t; -*-
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
(when (version< emacs-version "29.1")
  (error "This requires Emacs 29.1 and above!"))

;; USER info
(setq user-full-name "Muja Siyam"
      user-mail-address "contact@muja.dev")

;; UTF-8
;; set default charcters encoding to UTF-8.
;; PR from `hkjels`
(setq-default default-enable-multibyte-characters t)
(prefer-coding-system 'utf-8)
(set-language-environment "UTF-8")
;; ;; set default UTF-8 multiline and leve it for redability
;; (set-default-coding-systems 'utf-8)     ; Default to utf-encoding
;; (prefer-coding-system       'utf-8)     ; Add utf-8 at the front for automatic detection.
;; (set-default-coding-systems 'utf-8)     ; Set default value of various coding systems
;; (set-terminal-coding-system 'utf-8)     ; Set coding system of terminal output
;; (set-keyboard-coding-system 'utf-8)     ; Set coding system for keyboard input on TERMINAL
;; (set-language-environment "UTF-8")      ; Set up multilingual environment


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

;; CHANGE TAB SIZE 2 SPACES
(setq-default tab-width 2)	       ; enable indent global
(setq-default c-basic-offset 2)        ; enable indent for C/C++

;; ENABLE BULT-IN COMPLATION
(setq tab-always-indent 'complete)
(add-to-list 'completion-styles 'initials t)

;; Set up the visible bell
(setq visible-bell t)

;; Set default connection mode to SSH
(setq tramp-default-method "ssh")

;; autocomplete paired brackets
(electric-pair-mode 1)

;; 'alpha' transpairency
;; For current frame
(set-frame-parameter nil 'alpha-background 90)
;; For all new frames henceforth
(add-to-list 'default-frame-alist '(alpha-background . 90))

;; highlight line
(global-hl-line-mode 1)

;; Native Smooth Scrolling
(setq pixel-scroll-precision-large-scroll-height 40.0)
;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
;; one line at a time
(setq mouse-wheel-progressive-speed nil)
;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't)
;; scroll window under mouse
(setq scroll-step 1)
;; keyboard scroll one line at a time

;; end 'settings' file.
