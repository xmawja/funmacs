;;; org-roam.el -*- lexical-binding: t; -*-
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

;; Enable org-roam.el
(use-package org-roam
  :after org
  :init
  (setq org-roam-directory (concat org-directory "/org-roam/")
        org-roam-completion-everywhere nil
        ;;Functions tags are special types of tags which tells what the node are for
        ;;In the future, this should probably be replaced by categories
        funmacs/org-roam-function-tags '("compilation" "argument" "journal" "concept" "tool" "data" "bio" "literature" "event" "website"))
  :config
  ;; Org-roam interface
  (cl-defmethod org-roam-node-hierarchy ((node org-roam-node))
    "Return the node's TITLE, as well as it's HIERACHY."
    (let* ((title (org-roam-node-title node))
           (olp (mapcar (lambda (s) (if (> (length s) 10) (concat (substring s 0 10)  "...") s)) (org-roam-node-olp node)))
           (level (org-roam-node-level node))
           (filetitle (org-roam-get-keyword "TITLE" (org-roam-node-file node)))
           (filetitle-or-name (if filetitle filetitle (file-name-nondirectory (org-roam-node-file node))))
           (shortentitle (if (> (length filetitle-or-name) 20) (concat (substring filetitle-or-name 0 20)  "...") filetitle-or-name))
           (separator (concat " " (nerd-icons-octicon "nf-oct-chevron_right") " ")))
      (cond
       ((= level 1) (concat (propertize (format "=level:%d=" level) 'display
                                        (nerd-icons-faicon "nf-fa-file" :face 'nerd-icons-dyellow))
                            (propertize shortentitle 'face 'org-roam-olp) separator title))
       ((= level 2) (concat (propertize (format "=level:%d=" level) 'display
                                        (nerd-icons-faicon "nf-fa-file" :face 'nerd-icons-dsilver))
                            (propertize (concat shortentitle separator (string-join olp separator)) 'face 'org-roam-olp)
                            separator title))
       ((> level 2) (concat (propertize (format "=level:%d=" level) 'display
                                        (nerd-icons-faicon "nf-fa-file" :face 'org-roam-olp))
                            (propertize (concat shortentitle separator (string-join olp separator)) 'face 'org-roam-olp) separator title))
       (t (concat (propertize (format "=level:%d=" level) 'display
                              (nerd-icons-faicon "nf-fa-file" :face 'nerd-icons-yellow))
                  (if filetitle title (propertize filetitle-or-name 'face 'nerd-icons-dyellow)))))))

  (cl-defmethod org-roam-node-functiontag ((node org-roam-node))
    "Return the FUNCTION TAG for each node. These tags are intended to be unique to each file, and represent the note's function.
        journal data literature"
    (let* ((tags (seq-filter (lambda (tag) (not (string= tag "ATTACH"))) (org-roam-node-tags node))))
      (concat
       ;; Argument or compilation
       (cond
        ((member "argument" tags)
         (propertize "=f:argument=" 'display
                     (nerd-icons-mdicon "nf-md-forum" :face 'nerd-icons-dred)))
        ((member "compilation" tags)
         (propertize "=f:compilation=" 'display
                     (nerd-icons-mdicon "nf-md-format_list_text" :face 'nerd-icons-dyellow)))
        (t (propertize "=f:empty=" 'display
                       (nerd-icons-codicon "nf-cod-remove" :face 'org-hide))))
       ;; concept, bio, data or event
       (cond
        ((member "concept" tags)
         (propertize "=f:concept=" 'display
                     (nerd-icons-mdicon "nf-md-blur" :face 'nerd-icons-dblue)))
        ((member "tool" tags)
         (propertize "=f:tool=" 'display
                     (nerd-icons-mdicon "nf-md-tools" :face 'nerd-icons-dblue)))
        ((member "bio" tags)
         (propertize "=f:bio=" 'display
                     (nerd-icons-octicon "nf-oct-people" :face 'nerd-icons-dblue)))
        ((member "event" tags)
         (propertize "=f:event=" 'display
                     (nerd-icons-codicon "nf-cod-symbol_event" :face 'nerd-icons-dblue)))
        ((member "data" tags)
         (propertize "=f:data=" 'display
                     (nerd-icons-mdicon "nf-md-chart_arc" :face 'nerd-icons-dblue)))
        (t (propertize "=f:nothing=" 'display
                       (nerd-icons-codicon "nf-cod-remove" :face 'org-hide))))
       ;; literature
       (cond
        ((member "literature" tags)
         (propertize "=f:literature=" 'display
                     (nerd-icons-mdicon "nf-md-bookshelf" :face 'nerd-icons-dcyan)))
        ((member "website" tags)
         (propertize "=f:website=" 'display
                     (nerd-icons-mdicon "nf-md-web" :face 'nerd-icons-dsilver)))
        (t (propertize "=f:nothing=" 'display
                       (nerd-icons-codicon "nf-cod-remove" :face 'org-hide))))
       ;; journal
       )))

  (cl-defmethod org-roam-node-othertags ((node org-roam-node))
    "Return the OTHER TAGS of each notes."
    (let* ((tags (seq-filter (lambda (tag) (not (string= tag "ATTACH"))) (org-roam-node-tags node)))
           (specialtags funmacs/org-roam-function-tags)
           (othertags (seq-difference tags specialtags 'string=)))
      (propertize
       (string-join
        (append '(" ") othertags)
        (propertize "#" 'display
                    (nerd-icons-faicon "nf-fa-hashtag" :face 'nerd-icons-dgreen)))
       'face 'nerd-icons-dgreen)))

  (cl-defmethod org-roam-node-backlinkscount ((node org-roam-node))
    (let* ((count (caar (org-roam-db-query
                         [:select (funcall count source)
                                  :from links
                                  :where (= dest $s1)
                                  :and (= type "id")]
                         (org-roam-node-id node)))))
      (if (> count 0)
          (concat (propertize "=has:backlinks=" 'display
                              (nerd-icons-mdicon "nf-md-link" :face 'nerd-icons-blue)) (format "%d" count))
        (concat " " (propertize "=not-backlinks=" 'display
                                (nerd-icons-mdicon "nf-md-link" :face 'org-hide))  " "))))

  (cl-defmethod org-roam-node-directories ((node org-roam-node))
    (if-let ((dirs (file-name-directory (file-relative-name (org-roam-node-file node) org-roam-directory))))
        (concat
         (if (string= "journal/" dirs)
             (nerd-icons-mdicon	"nf-md-fountain_pen_tip" :face 'nerd-icons-dsilver)
           (nerd-icons-mdicon	"nf-md-folder" :face 'nerd-icons-dsilver))
         (propertize (string-join (f-split dirs) "/") 'face 'nerd-icons-dsilver) " ")
      ""))

  (defun +marginalia--time-colorful (time)
    (let* ((seconds (float-time (time-subtract (current-time) time)))
           (color (doom-blend
                   (face-attribute 'marginalia-on :foreground nil t)
                   (face-attribute 'marginalia-off :foreground nil t)
                   (/ 1.0 (log (+ 3 (/ (+ 1 seconds) 345600.0)))))))
      ;; 1 - log(3 + 1/(days + 1)) % grey
      (propertize (marginalia--time time) 'face (list :foreground color :slant 'italic))))

  (setq org-roam-node-display-template
        (concat  "${backlinkscount:16} ${functiontag} ${directories}${hierarchy}${othertags} ")
        org-roam-node-annotation-function
        (lambda (node) (+marginalia--time-colorful (org-roam-node-file-mtime node))))
  )

;; end 'org-roam' file.
