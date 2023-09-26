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
(use-package emacs-lisp-mode
  :ensure nil
  :straight (:type built-in)
  :hook
  ;; autoload 'eglot' server
  (emacs-lisp-mode . eglot-ensure)
  :config
  (add-hook 'emacs-lisp-mode-hook
            (lambda ()
              ;; Use spaces, not tabs.
              (setq indent-tabs-mode nil)
              ;; Keep M-TAB for `completion-at-point'
              (define-key flyspell-mode-map "\M-\t" nil)
              ;; Pretty-print eval'd expressions.
              (define-key emacs-lisp-mode-map
                          "\C-x\C-e" 'pp-eval-last-sexp)
              ;; Recompile if .elc exists.
              (add-hook (make-local-variable 'after-save-hook)
                        (lambda ()
                          (byte-force-recompile default-directory)))
              (define-key emacs-lisp-mode-map
                          "\r" 'reindent-then-newline-and-indent)))
  (add-hook 'emacs-lisp-mode-hook 'eldoc-mode)
  (add-hook 'emacs-lisp-mode-hook 'flyspell-prog-mode) ;; Requires Ispell
  ) ;; end conf-mode.el

;; end 'conf-mode' file.

