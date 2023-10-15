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

;; Enable 'svg-tag-mode.el' 
(use-package svg-tag-mode
  :config
  (defconst date-re "[0-9]\\{4\\}-[0-9]\\{2\\}-[0-9]\\{2\\}")
  (defconst time-re "[0-9]\\{2\\}:[0-9]\\{2\\}")
  (defconst day-re "[A-Za-z]\\{3\\}")
  (defconst day-time-re (format "\\(%s\\)? ?\\(%s\\)?" day-re time-re))

  (defun svg-progress-percent (value)
    (svg-image (svg-lib-concat
                (svg-lib-progress-bar
                 (/ (string-to-number value) 100.0) nil
                 :height 0.8 :foreground (doom-color 'fg) :background (doom-color 'bg)
                 :margin 0 :stroke 2 :radius 3 :padding 2 :width 11)
                (svg-lib-tag (concat value "%") nil
                             :height 0.8 :foreground (doom-color 'fg) :background (doom-color 'bg)
                             :stroke 0 :margin 0)) :ascent 'center))

  (defun svg-progress-count (value)
    (let* ((seq (mapcar #'string-to-number (split-string value "/")))
           (count (float (car seq)))
           (total (float (cadr seq))))
      (svg-image (svg-lib-concat
                  (svg-lib-progress-bar (/ count total) nil
                                        :foreground (doom-color 'fg)
                                        :background (doom-color 'bg) :height 0.8
                                        :margin 0 :stroke 2 :radius 3 :padding 2 :width 11)
                  (svg-lib-tag value nil
                               :foreground (doom-color 'fg)
                               :background (doom-color 'bg)
                               :stroke 0 :margin 0 :height 0.8)) :ascent 'center)))

  (set-face-attribute 'svg-tag-default-face nil :family "Alegreya Sans")
  (setq svg-tag-tags
        `(;; Progress e.g. [63%] or [10/15]
          ("\\(\\[[0-9]\\{1,3\\}%\\]\\)" . ((lambda (tag)
                                              (svg-progress-percent (substring tag 1 -2)))))
          ("\\(\\[[0-9]+/[0-9]+\\]\\)" . ((lambda (tag)
                                            (svg-progress-count (substring tag 1 -1)))))
          ;; Task priority e.g. [#A], [#B], or [#C]
          ("\\[#A\\]" . ((lambda (tag) (svg-tag-make tag :face 'error :inverse t :height .85
                                                     :beg 2 :end -1 :margin 0 :radius 10))))
          ("\\[#B\\]" . ((lambda (tag) (svg-tag-make tag :face 'warning :inverse t :height .85
                                                     :beg 2 :end -1 :margin 0 :radius 10))))
          ("\\[#C\\]" . ((lambda (tag) (svg-tag-make tag :face 'org-todo :inverse t :height .85
                                                     :beg 2 :end -1 :margin 0 :radius 10))))
          ;; Keywords
          ("TODO" . ((lambda (tag) (svg-tag-make tag :inverse t :height .85 :face 'org-todo))))
          ("HOLD" . ((lambda (tag) (svg-tag-make tag :height .85 :face 'org-todo))))
          ("DONE\\|STOP" . ((lambda (tag) (svg-tag-make tag :inverse t :height .85 :face 'org-done))))
          ("NEXT\\|WAIT" . ((lambda (tag) (svg-tag-make tag :inverse t :height .85 :face '+org-todo-active))))
          ("REPEAT\\|EVENT\\|PROJ\\|IDEA" .
           ((lambda (tag) (svg-tag-make tag :inverse t :height .85 :face '+org-todo-project))))
          ("REVIEW" . ((lambda (tag) (svg-tag-make tag :inverse t :height .85 :face '+org-todo-onhold))))))

  :hook (org-mode . svg-tag-mode)
  ) ;; End

;; End 'svg-tag-mode.el' file.
