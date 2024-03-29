;;; markdown.el -*- lexical-binding: t; -*-
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

;; Enable markdown-mode.el
;; Or using hooks
(use-package markdown-soma
  :straight t
  ;;:hook ((markdown-mode org-mode) . markdown-soma-mode)
  :init
  ;; default render buffer hooks
  (setq markdown-soma--render-buffer-hooks
        '(after-revert-hook
          after-save-hook
          after-change-functions
          post-command-hook))
  :config
  ;; rust cargo bin PATH.
  (add-to-list 'exec-path "~/.cargo/bin")
  ) ;; End

;; end 'markdown-mode' file.
