;;; kind-icon.el -*- lexical-binding: t; -*-
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

;; ENABLE 'nerd-font.el'
(use-package nerd-icons
  ;; :custom
  ;; The Nerd Font you want to use in GUI
  ;; "Symbols Nerd Font Mono" is the default and is recommended
  ;; but you can use any other Nerd Font if you want
  ;; (nerd-icons-font-family "Symbols Nerd Font Mono")
  ) ;; End 
  
(use-package nerd-icons-dired
  :hook
  (dired-mode . nerd-icons-dired-mode)
  )

(use-package treemacs-nerd-icons
  :config
  (treemacs-load-theme "nerd-icons"))

(use-package nerd-icons-completion
  :after marginalia
  :config
  (nerd-icons-completion-mode)
  (add-hook 'marginalia-mode-hook #'nerd-icons-completion-marginalia-setup))

(use-package nerd-icons-ibuffer
  :ensure t
  :hook (ibuffer-mode . nerd-icons-ibuffer-mode)
  :config
  ;; Whether display the icons.
  (setq nerd-icons-ibuffer-icon t)

  ;; Whether display the colorful icons.
  ;; It respects `nerd-icons-color-icons'.
  (setq nerd-icons-ibuffer-color-icon t)

  ;; The default icon size in ibuffer.
  (setq nerd-icons-ibuffer-icon-size 1.0)

  ;; Use human readable file size in ibuffer.
  (setq  nerd-icons-ibuffer-human-readable-size t)

  ;; A list of ways to display buffer lines with `nerd-icons'.
  ;; See `ibuffer-formats' for details.
  nerd-icons-ibuffer-formats

  ;; Slow Rendering
  ;; If you experience a slow down in performance when rendering multiple icons simultaneously,
  ;; you can try setting the following variable
  (setq inhibit-compacting-font-caches t)
  )




;;; End
