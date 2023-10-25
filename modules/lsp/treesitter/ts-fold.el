;;; typescript-conf.el -*- lexical-binding: t; -*-
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

;;; code

;; Enable 'ts-fold'
;; Code-folding using tree-sitter
;; ts-fold builds on top of elisp-tree-sitter
;; to provide code folding based on the tree-sitter syntax tree.
(use-package ts-fold
  :straight (ts-fold
             :type git
             :host github
             :repo "emacs-tree-sitter/ts-fold")
  :config
  (global-ts-fold-mode)
  (global-ts-fold-indicators-mode 1)

  (setq ts-fold-indicators-fringe 'right-fringe)
  (setq ts-fold-indicators-priority 30)
  (setq ts-fold-indicators-face-function
        (lambda (pos &rest _)
          ;; Return the face of it's function.
          (line-reminder--get-face (line-number-at-pos pos t))))

  (advice-add 'line-reminder-transfer-to-saved-lines
              :after
              ;; Refresh indicators for package `ts-fold'.
              #'ts-fold-indicators-refresh)

  ;; Example of ts-fold-range-alist's structure
  '((c-mode     . c-folding-definitions) ;; <language>-folding-definitions is structured as shown below
    (c++-mode     . c++-folding-definitions)
    (sh-mode     . sh-folding-definitions)
    (rust-mode     . rust-folding-definitions)
    (java-mode    . java-folding-definitions)
    (go-mode    . go-folding-definitions)
    (scala-mode . scala-folding-definitions)
    (elisp-mode     . elisp-folding-definitions)

    (zig-mode     . zig-folding-definitions)
    (nix-mode     . nix-folding-definitions)
    (python-mode     . python-folding-definitions)

    (html-mode     . html-folding-definitions)
    (css-mode   . css-folding-definitions)
    (javascript-mode     . javascript-folding-definitions)
    (typescript-mode     . typescript-folding-definitions)
    (php-mode     . php-folding-definitions)

    (json-mode     . json-folding-definitions)
    (toml-mode     . toml-folding-definitions)
    (yaml-mode     . yaml-folding-definitions)
    (markdown-mode     . markdown-folding-definitions)

    (docker-mode     . docker-folding-definitions)
    ...)

  ;; Examle of a folding definition alist
  (setq css-folding-definitions
        (block   . ts-fold-range-seq)
        (comment . ts-fold-range-c-like-comment))
  :bind
  (:map global-map
        ("C-c f O" . ts-fold-open-all)
        ("C-c f o" . ts-fold-open-recursively)
        ("C-c f C" . ts-fold-close-all)
        ("C-c f c" . ts-fold-close)
        ("C-c f z" . ts-fold-toggle))
  ) ;; End


;; End 'ts-fold.el' file.
