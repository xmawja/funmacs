;;; lang-config.el -*- lexical-binding: t; -*-
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

(use-package format-all
  ;; :init
  ;; (setq format-all-formatters
  ;;       '((\"Shell\" (shfmt \"-i\" \"4\" \"-ci\"))
  ;; ))
  :preface
  (defun funmacs/format-code ()
    "Auto-format whole buffer."
    (interactive)
    (if (derived-mode-p 'prolog-mode)
        (prolog-indent-buffer)
      (format-all-buffer)))

  :config
  (global-set-key (kbd "M-F") #'funmacs/format-code)
  (add-hook 'prog-mode-hook #'format-all-ensure-formatter)
  ) ;; End

;; End 'format-all' file.
