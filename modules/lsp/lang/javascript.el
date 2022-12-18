;;; javascript.el -*- lexical-binding: t; -*-
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

;; Function to setup javascript and typescript mode
(defun my/setup-js-mode ()
  (require 'dap-firefox)
  (require 'dap-chrome)
  (setq tab-width 2)
  (when (require 'lsp-javascript nil t)
    (lsp)))

;; Enable js2-mode.el
;; Bind js2-mode to any file with the *.js extension by default:
(use-package js2-mode
  :after (lsp-mode dap-mode)
  :mode "\\.js\\'"
  :hook
  ((js2-mode . my/setup-js-mode)))

;; Enable typescript-mode.el
;; Bind typescript-mode to any file with the *.ts extension by default:
(use-package typescript-mode
  :after (lsp-mode dap-mode)
  :mode ("\\.ts\\'" "\\.tsx\\'")
  :hook
  ((typescript-mode . my/setup-js-mode)))

;; Enable risx-mode.el
;; But if a *.js file  is inside a components directory, use rjsx-mode instead:
(use-package rjsx-mode
  :mode "\\.jsx\\'"
  :mode "components\\/.*\\.js\\'"
  :hook ((rjsx-mode . lsp-deferred)))
