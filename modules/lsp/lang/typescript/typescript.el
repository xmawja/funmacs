;;; typescript.el -*- lexical-binding: t; -*-
;; This file has been generated from init.el file. DO NOT EDIT.
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


;; Enable typescript-mode.el
;; Bind typescript-mode to any file with the *.ts extension by default:
(use-package typescript-mode
  ;; ;; uncomment if youre using 'lsp-mode'
  ;; :after (lsp-mode dap-mode)
  :mode ("\\.ts\\'" "\\.tsx\\'")
  :hook
  ;; uncomment if you are using 'lsp-mode'.
  ;; ((typescript-mode . my/setup-js-mode))
  ;; uncomment if you are using 'eglot'.
  (typescript-mode . eglot-ensure)
  ) ;;end typescript.el

;; end 'typescript' file.
