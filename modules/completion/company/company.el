;;; company.el -*- lexical-binding: t; -*-
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

;; Enable company.el
(use-package company
  :after lsp-mode
  :hook
  ;; after init
  (after-init . global-company-mode)
  ;; (prog-mode . company-mode)
  ;; enable emacs lisp mode
  (emacs-lisp-mode . company-mode)
  ;; set company backends as default
  (emacs-lisp-mode . (lambda ()
		       (setq-local company-backends '(company-elisp))))
  (eglot-managed-mode-hook . (lambda ()
                               (add-to-list 'company-backends
                                            :                      '(company-capf :with company-yasnippet))))
  :bind (:map company-active-map
              ("<tab>" . company-complete-selection))
  (:map lsp-mode-map
        ("<tab>" . company-indent-or-complete-common))
  :custom
  (company-minimum-prefix-length 1)
  (company-idle-delay 0.0))

(use-package company-box
  :hook (company-mode . company-box-mode))
