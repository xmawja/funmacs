;;; themes.el -*- lexical-binding: t; -*-
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

;; Enable doom-themes.el
(use-package doom-themes
  :straight t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-one t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  ;;(doom-themes-neotree-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-colors") ; use "doom-colors" for less minimal icon theme
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

;; ;; Enable monokai-pro-theme.el
;;(use-package monokai-pro-theme
;;  :straight t
;;  :config
;;  (load-theme 'monokai-pro t)
;;  )

;; ;; Enable dracula-theme.el
;; (use-package dracula-theme
;;   :straight t
;;   :config
;;   (load-theme 'dracula t)
;;   ;; Don't change the font size for some headings and titles (default t)
;;   (setq dracula-enlarge-headings nil)

;;   ;; Adjust font size of titles level 1 (default 1.3)
;;   (setq dracula-height-title-1 1.25)

;;   ;; Adjust font size of titles level 2 (default 1.1)
;;   (setq dracula-height-title-2 1.15)

;;   ;; Adjust font size of titles level 3 (default 1.0)
;;   (setq dracula-height-title-3 1.05)

;;   ;; Adjust font size of document titles (default 1.44)
;;   (setq dracula-height-doc-title 1.4)

;;   ;; Use less pink and bold on the mode-line and minibuffer (default nil)
;;   (setq dracula-alternate-mode-line-and-minibuffer t)
;;   )
