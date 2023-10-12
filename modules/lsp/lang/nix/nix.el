;;; markdown-conf.el -*- lexical-binding: t; -*-
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

;; Enable 'nix-mode.el'
(use-package nix-mode
  :ensure t
  :mode
  ("\\.nix\\'" "\\.nix.in\\'")
  :hook
  (nix-mode . eglot-ensure)
  :config
  (add-to-list 'eglot-server-programs '(nix-mode . ("rnix-lsp")))
  ) ;; End 

;; (use-package nix-drv-mode
;;   :ensure nix-mode
;;   :mode "\\.drv\\'")

;; (use-package nix-shell
;;   :ensure nix-mode
;;   :commands
;;   (nix-shell-unpack nix-shell-configure nix-shell-build)
;;   )

;; (use-package nix-repl
;;   :ensure nix-mode
;;   :commands
;;   (nix-repl)
;;   )

;; end 'nix-mode.el' file.
