;;; c.el -*- lexical-binding: t; -*-
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

;; Enable conf-mode.el
(use-package conf-mode
 ;; :ensure nil
  :straight (:type built-in)
  :hook
  ;; install 'vscode-langservers-extracted' protocol
  ;; npm i -g vscode-langservers-extracted
  ;; autoload 'eglot' server
  (conf-mode . eglot-ensure)
  :config
  ;; load conf-unix-mode
  (add-to-list 'auto-mode-alist '("/etc/.*" . conf-unix-mode))
  ) ;; end conf-mode.el

;; end 'conf-mode' file.

