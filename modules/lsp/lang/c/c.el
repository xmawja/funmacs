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

;; Enable c-mode.el
(use-package c-mode
  :ensure nil                   ;; don't pull anything its builtin
  :straight (:type built-in)    ;; don't pull anything its builtin
  :hook
  ;; set to use eglot.el
  ;; uncommented if you're using eglot.el
  (c-mode . eglot-ensure)
  ;; Using 'Makefile' from parent directory
  ;; This will run Make if there is a 'Makefile'
  ;; in the same directory as the source-file,
  ;; or it will create a command for compiling a single file
  ;; and name the executable the same name as the file with the extension stripped.
  (c-mode . (lambda ()
              (unless (file-exists-p "Makefile")
                (set (make-local-variable 'compile-command)
                     ;; emulate make's .c.o implicit pattern rule, but with
                     ;; different defaults for the CC, CPPFLAGS, and CFLAGS
                     ;; variables:
                     ;; $(CC) -c -o $@ $(CPPFLAGS) $(CFLAGS) $<
        	           (let ((file (file-name-nondirectory buffer-file-name)))
                       (format "%s -c -o %s.o %s %s %s"
                               (or (getenv "CC") "clang")
                               (file-name-sans-extension file)
                               (or (getenv "CPPFLAGS") "-DDEBUG=9")
                               (or (getenv "CFLAGS") "-ansi -pedantic -Wall -Wextra -Werror -g")
        		                   file))))))
  :config
  ;; define the c lsp backend server.
  (with-eval-after-load 'eglot
    (add-to-list 'eglot-server-programs
               '(c-mode . ("clangd" "--stdio"))))
  ;; (add-to-list 'eglot-server-programs '(c-mode "clangd"))
  ) ;; end c-mode.el

;; end 'c-mode' file.
