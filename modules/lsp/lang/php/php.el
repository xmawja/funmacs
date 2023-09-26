;;; html-mode.el -*- lexical-binding: t; -*-
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

;; Enable html-mode.el
(use-package php-mode
  :ensure t
  ;; :straight (:type built-in)
  :hook
  ;; install 'vscode-langservers-extracted' protocol
  ;; npm i -g vscode-langservers-extracted
  ;; autoload 'eglot' server
  (php-mode . eglot-ensure)
  ;; :config
  ;; ;; (autoload 'php-mode "php-mode" "Major mode for editing PHP code." t)
  ;; (add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
  ;; (add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))

  ) ;; end html-mode.el

;; end 'html-mode' file.
