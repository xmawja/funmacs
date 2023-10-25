;;; eglot.el -*- lexical-binding: t; -*-
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

;;; code

;; Enable 'treesitter.el'
(use-package tree-sitter
  :config
  (global-tree-sitter-mode)
  (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)
  ) ;; end

;; treesit language
(use-package tree-sitter-langs
  :straight (tree-sitter-langs
             :type git
             :host github
             :repo "emacs-tree-sitter/tree-sitter-langs")
  ) ;; end


;; (require 'treesit)

;; ;; M-x treesit-install-language-grammar bash
;; (add-to-list
;;  'treesit-language-source-alist
;;  '(bash "https://github.com/tree-sitter/tree-sitter-bash.git"))

;; ;; sh-mode use bash-ts-mode
;; (add-to-list 'major-mode-remap-alist
;;              '(sh-mode . bash-ts-mode))

;; ;; sh-mode use bash-ts-mode
;; (add-to-list 'major-mode-remap-alist
;;              '(c-mode . c-ts-mode))


;; ;; treesitter explore open in side window
;; (add-to-list 'display-buffer-alist
;;    '("^*tree-sitter explorer *" display-buffer-in-side-window
;;      (side . right)
;;      (window-width . 0.40)))


;; (use-package tree-sitter
;;   ;; ignore treesitter from pull using package.el
;;   :ensure nil
;;   ;; ignore treesitter from pull using straight.el
;;   :straight (:type built-in)
;;   ) ;; end treesitter.el

;; end 'tree-sitter' file
