;;; org-mode.el -*- lexical-binding: t; -*-
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

;; Enable 'flyaspell.el'

(use-package flyspell
  :ensure t
  :defer t
  :hook
  (text-mode . flyspell-mode)
  ;; (prog-mode . flyspell-prog-mode)
  :config
  (define-key flyspell-mode-map (kbd "C-,") nil)
  (define-key flyspell-mode-map (kbd "C-.") nil)
  (define-key flyspell-mode-map (kbd "C-;") #'flyspell-correct-wrapper)
  ) ;; End

(use-package flyspell-correct
  :after (flyspell)
  :commands (flyspell-correct-at-point
             flyspell-correct-wrapper)
  ) ;; End

;; End 'flyspell.el' file.
