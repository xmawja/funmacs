;;; backup.el -*- lexical-binding: t; -*-
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

;; Enable backup.el
(use-package files
  ;; :ensure nil
  ;; :straight (:type built-in)
  :hook
  (before-save . delete-trailing-whitespace)
  :custom
  ;; backup settings
  (backup-by-copying t "don't clobber symlinks")
  (delete-old-versions t)
  (kept-new-versions 6)
  (kept-old-versions 2)
  (version-control t "use versioned backups")
  :config
  (setq confirm-kill-processes nil)
  ) ;; end backup.el

;; ;; backup-dir.el package.
;; (use-package backup-dir
;;   :ensure nil
;;   :straight (:type built-in)
;;   :custom
;;   ;; localize it for safety.
;;   (make-variable-buffer-local 'backup-inhibited)

;;   (setq bkup-backup-directory-info
;;         '((t "~/.emacs_common/backup" ok-create full-path prepend-name)))
;;   (setq delete-old-versions t
;;         kept-old-versions 1
;;         kept-new-versions 3
;;         version-control t)
;;   :config
;;   ;; backup-dir package.
;;   ;; 'make-backup-file-name' will store your files in dated directories,
;;   ;; (for example, ~/.backups/emacs/07/04/07/filename):
;;   (defun make-backup-file-name (FILE)
;;     (let ((dirname (concat "~/.backups/emacs/"
;;                            (format-time-string "%y/%m/%d/"))))
;;       (if (not (file-exists-p dirname))
;;           (make-directory dirname t))
;;       (concat dirname (file-name-nondirectory FILE))))
;;   (make-backup-file-name t)
;;   ) ;; end backup-dir.el

;; end 'backup' file.
