;;; dap-mode.el -*- lexical-binding: t; -*-
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

;; Enable dap-mode.el
(use-package dap-mode
  :straight t
  :diminish dap-mode
  :after (lsp-mode)
  :functions dap-hydra/nil
  :bind (:map lsp-mode-map
	            ("<f5>" . dap-debug)
	            ("M-<f5>" . dap-hydra))
  :hook ((dap-mode . dap-ui-mode)
	       (dap-session-created . (lambda (&_rest) (dap-hydra)))
	       (dap-terminated . (lambda (&_rest) (dap-hydra/nil))))
  ) ;; end dap-mode.el

;; end 'dap-mode' file.
