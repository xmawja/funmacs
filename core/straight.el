;;; straight.el -*- lexical-binding: t; -*-
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

;; disable package.el to load package as startup time.
;; comment if you set it in early-init.el
;;(setq package-enable-at-startup nil)

;; BOOTSTRAPING straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; INITIALIZED USE-PACKAGES
(straight-use-package 'use-package)
(setq use-package-always-ensure t)

;; CONFIGURE use-package TO USE straight.el BY DEFAULT
(use-package straight
  :custom (straight-use-package-by-default t))

;; use-package.el is no longer needed at runtime
;; This means you should put the following at
;; the top of your Emacs, to further reduce load time:
(eval-when-compile
  (require 'use-package))
;; (require 'diminish)                ;; if you use :diminish
(require 'bind-key)                ;; if you use any :bind variant
