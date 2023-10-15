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

;;; code

;; Enable 'org-mode.el'
(use-package org
  ;; ignore org.el from pull using package.el
  :ensure nil
  ;; ignore org.el from pull using straight.el.
  :straight (:type built-in)
  :after org
  :hook
  (after-init . org-mode)
  ;; ;; modern org-mode org-modern
  ;; ;; Option 1: Per buffer
  ;; (org-mode . org-modern-mode)
  ;; (org-agenda-finalize . org-modern-agenda)
  :init
  ;;(setq-default major-mode 'org-mode) if nesesery
  ;; set the default notes file places
  ;; (setq org-default-notes-file (concat org-directory "/notes.org"))
  (setq org-default-notes-file (concat org-directory "/notes.org"))
  ;; set the deafault org directory
  (setq org-directory (expand-file-name "~/org"))
  ;; activaae loge done
  (setq org-log-done t)
  ;; closing timestamp or next line
  (setq org-log-done 'time)
  ;; take a note before closing the task.
  (setq org-log-done 'note)
  ;; Pamodoro timer tone
  (setq org-clock-sound "~/.emacs.d/assets/sound/ding.wav")
  :config
  (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
  ;; Prettification should ignore preceding letters
  (defun prettify-symbols-compose-in-text-mode-p (start end _match)
    "Similar to `prettify-symbols-default-compose-p' but ignore letters or words."
    ;; Check that the chars should really be composed into a symbol.
    (let* ((syntaxes-beg (if (memq (char-syntax (char-after start)) '(?_))
                             '(?_) '(?. ?\\)))
           (syntaxes-end (if (memq (char-syntax (char-before end)) '(?_))
                             '(?_) '(?. ?\\))))
      (not (or (memq (char-syntax (or (char-before start) ?\s)) syntaxes-beg)
               (memq (char-syntax (or (char-after end) ?\s)) syntaxes-end)
               ;; (nth 8 (syntax-ppss))
               (org-in-src-block-p)
               ))))
  ;; Replace two consecutive hyphens with the em-dash
  (defun funmacs/org-mode-load-prettify-symbols ()
    (interactive)
    (pushnew! prettify-symbols-alist
              '("--"  . "–") '("---" . "—")
              '("(?)" . "") '("(?)." . "") '("(?)," . ""))
    (modify-syntax-entry ? " ")
    (prettify-symbols-mode 1)
    ;; Now, set the value of this
    (setq-local prettify-symbols-compose-predicate 'prettify-symbols-compose-in-text-mode-p)
    )
  (when (not IS-WINDOWS)
    (add-hook 'org-mode-hook 'funmacs/org-mode-load-prettify-symbols))
  ) ;; end org-mode.el

;; end 'org-mode' file.
