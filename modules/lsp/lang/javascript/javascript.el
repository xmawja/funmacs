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

;; ;; Function to setup javascript and typescript on lsp-mode.el
;; (defun my/setup-js-mode ()
;;   (require 'dap-firefox)
;;   (require 'dap-chrome)
;;   (setq tab-width 2)
;;   (when (require 'lsp-javascript nil t)
;;     (lsp)))

;; Enable js2-mode.el
;; Bind js2-mode to any file with the *.js extension by default:
(use-package js2-mode
  ;; ;; uncomment if youre unig 'lsp-mode'.
  ;; :after (lsp-mode dap-mode)
  :mode "\\.js\\'"
  :hook
  ;; To install it as your major mode for JavaScript editing:
  ;; (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
  ;; Alternatively, to install it as a minor mode just for JavaScript linting,
  ;; you must add it to the appropriate major-mode hook.  Normally this would be:
  ;; (add-hook 'js-mode-hook 'js2-minor-mode)
  ;; uncomment if you are using ls-mode.el
  ;;((js2-mode . my/setup-js-mode))
  ;; uncomment if your are using 'eglot'.
  (js2-mode . eglot-ensure)
  ) ;; end 'js2-mode'

;; Options
;; js2-refactor.el
(use-package js2-refactor
  :straight t
  :hook
  ;; js2-refactor.el is now a minor mode \
  ;; that has to be enabled, with something like the following:
  (js2-mode . js2-refactor-mode)
  ) ;; end 'js2-refactor'

;; Enable risx-mode.el
;; But if a *.js file  is inside a components directory, use rjsx-mode instead:
(use-package rjsx-mode
  :mode "\\.jsx\\'"
  :mode "components\\/.*\\.js\\'"
  :hook
  ;; uncomment if youre using 'lsp-mode'.
  ;; ((rjsx-mode . lsp-deferred))
  ;; uncomment if youre using 'eglot'.
  (rjsx-mode . eglot-ensure)
  ) ;; end 'rjsx-mode'
