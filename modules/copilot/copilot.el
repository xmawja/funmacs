;;; editorconfig.el -*- lexical-binding: t; -*-
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

;; load library 'PATH'
(use-package copilot
  ;; :disabled t
  :straight (:host github :repo "zerolfx/copilot.el" :files ("dist" "*.el"))
  :ensure t
  :custom
  (copilot-disable-predicates '(always))
  :hook
  (prog-mode . copilot-mode)
  :bind
  ("M-`" . copilot-complete)
  :bind
  (:map rab/toggles-map
        ("`" . copilot-mode))
  :bind
  (:map copilot-completion-map
        ("C-g" .  'copilot-clear-overlay)
        ("M-p" . 'copilot-previous-completion)
        ("M-n" . 'copilot-next-completion)
        ("<tab>" . 'copilot-accept-completion)
        ("M-f" . 'copilot-accept-completion-by-word)
        ("M-<return>" . 'copilot-accept-completion-by-line))
  ) ;; end

;; end 'copilot' file.
