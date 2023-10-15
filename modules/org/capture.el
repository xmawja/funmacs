;;; org-capture.el -*- lexical-binding: t; -*-
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

;; Enable org-capture.el
(use-package org-capture
  :ensure nil
  :straight (:type built-in)
  ;; :require org
  :bind (:map global-map
              ("C-c c" . org-capture)        ;; capture notes
              )
  :config
  ;; (setq org-capture-templates
  ;;       '(
  ;;         ("t"                               ;; hotkey
  ;;          "Tasks for a day"                 ;; name
  ;;          entry                             ;; type
  ;;          ;; headline type and title
  ;;          ;; set the default notes file places
  ;;          ;; (setq org-default-notes-file (concat org-directory "/notes.org"))
  ;;          (file+headline "~/Documents/org/tasks.org" "Tasks")
  ;;          "* TODO %?\n- Added: %U %i\n  %a")
  ;;         )
  ;;       )
  ;;CAPTURE TEMPLATES
  ;;Create IDs on certain capture
  (defun funmacs/org-capture-maybe-create-id ()
    (when (org-capture-get :create-id)
      (org-id-get-create)))
  (add-hook 'org-capture-mode-hook #'funmacs/org-capture-maybe-create-id)
  ;;Auxiliary funmacsctions
  (defunmacs funmacs/capture-ox-hugo-post (lang)
    (setq funmacs/ox-hugo-post--title (read-from-minibuffer "Post Title: ")
          funmacs/ox-hugo-post--fname (org-hugo-slug funmacs/ox-hugo-post--title)
          funmacs/ox-hugo-post--fdate (format-time-string "%Y-%m-%d"))
    (expand-file-name (format "%s_%s.%s.org" funmacs/ox-hugo-post--fdate funmacs/ox-hugo-post--fname lang)
                      (concat dropbox-directory "/Org-roam/writings/")))
  ;; Capture templates
  (setq org-capture-templates
        `(("i" "Inbox" entry (file ,(concat org-directory "/capture/inbox.org"))
           "* TODO %?\n  %i\n")
          ("m" "Meeting" entry (file ,(concat org-directory "/capture/inbox.org"))
           "* MEETING with %? :meeting:\n%t" :clock-in t :clock-resume t)
          ;; Capture template for new blog posts
          ("b" "New blog post")
          ("be" "English" plain (file (lambda () (funmacs/capture-ox-hugo-post "en")))
           ,(string-join
             '("#+title: %(eval funmacs/ox-hugo-post--title)"
               "#+subtitle:"
               "#+author: %n"
               "#+filetags: blog"
               "#+date: %(eval funmacs/ox-hugo-post--fdate)"
               "#+hugo_base_dir: ~/Dropbox/Blogs/hieutkt/"
               "#+hugo_section: ./posts/"
               "#+hugo_tags: %?"
               "#+hugo_url: ./%(eval funmacs/ox-hugo-post--fname)"
               "#+hugo_slug: %(eval funmacs/ox-hugo-post--fname)"
               "#+hugo_custom_front_matter:"
               "#+hugo_draft: false"
               "#+startup: content"
               "#+options: toc:2 num:t")
             "\n")
           :create-id t
           :immediate-finish t
           :jump-to-captured t)
          ("bv" "Vietnamese" plain (file (lambda () (funmacs/capture-ox-hugo-post "vi")))
           ,(string-join
             '("#+title: %(eval funmacs/ox-hugo-post--title)"
               "#+subtitle:"
               "#+author: %n"
               "#+filetags: blog"
               "#+date: %(eval funmacs/ox-hugo-post--fdate)"
               "#+hugo_base_dir: ~/Dropbox/Blogs/xmawja/"
               "#+hugo_section: ./posts/"
               "#+hugo_tags: %?"
               "#+hugo_url: ./%(eval funmacs/ox-hugo-post--fname)"
               "#+hugo_slug: %(eval funmacs/ox-hugo-post--fname)"
               "#+hugo_custom_front_matter:"
               "#+hugo_draft: false"
               "#+startup: content"
               "#+options: toc:2 num:t")
             "\n")
           :create-id t
           :immediate-finish t
           :jump-to-captured t)))
  ) ;; end org-capture.el
;; end 'org-capture' file.
