;;; python.el -*- lexical-binding: t; -*-
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

;; Enable python.el if needed.
(use-package python
  :mode
  ;; enable python-mode on all .py extenssion
  ("\\.py\\'" . python-mode)
  ;; enable python-mode for Web Server Gateway Interface.
  ("\\.wsgi$" . python-mode)
  ;; set the default python it depend of your local envirunment variables
  :interpreter ("python" . python-mode)
  :init
  ;; disable indent tabs.
  (setq-default indent-tabs-mode nil)
  :hook
  ;; set lsp backend server
  ;; uncomment if using eglot
  (python-mode . eglot-ensure)
  ;; ;; uncomment if using lsp-mode
  ;; (python-mode . lsp-mode)
  :config
  ;; because the lsp backend can't guess the indent
  ;; the default value is 4 spacese if you dont set it globaly.
  ;; be aware of tabs.
  (setq python-indent-offset 4)
  ;; disable emacs guessing the offset, and allways use the defaults.
  (setq python-indent-guess-indent-offset nil)
  ;; (add-hook 'python-mode-hook 'smartparens-mode)
  ;; (add-hook 'python-mode-hook 'color-identifiers-mode)
  )

;; lsp serve backend clients.
;; ;; uncommnted if youre using lsp-mode.
;; (use-package lsp-pyright
;;   :ensure t
;;   :hook
;;   (python-mode . (lambda ()
;;                    (require 'lsp-pyright)
;;                    (lsp)))  ; or lsp-deferred
;;   )
;; good and lightweght eglot python lsp to integrate with.
;; at this moment there is no better than pyright.
;; uncomment if your using eglot.
(use-package lsp-pyright
  :straight t
  )

;; Enable pyvenv.el
;; pyenv python envirnment variables.
(use-package pyvenv
  :straight t
  :after (eglot)
  :init
  ;; set the working home directory.
  ;; create 'versions' directory manualy.
  (setenv "WORKON_HOME" "~/.pyenv/versions")
  )
