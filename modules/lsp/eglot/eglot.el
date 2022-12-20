;;; eglot.el -*- lexical-binding: t; -*-
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

;; Enable eglot.el
(use-package eglot
  ;; ignore eglot from pull using package.el
  :ensure nil
  ;; ignore eglot from pull using straight.el
  :straight (:type built-in)
  :hook
  ;; set c language hook
  (c-mode . eglot-ensure)
  ;; set c++ language hook
  (c++-mode . eglot-ensure)
  ;; set shell mode 'bash'
  ;; (sh-mode . eglot-ensure)
  :config
  (add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd"))
  ;; enable zsh script to use 'sh-mode'.
  (add-hook 'sh-mode-hook
            (lambda ()
              (if (string-match "\\.zsh$" buffer-file-name)
                  (sh-set-shell "zsh"))))
  )
