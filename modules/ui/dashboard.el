;;; dashboard.el -*- lexical-binding: t; -*-
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

;; Enable dashboard.el
(use-package dashboard
  :straight t
  :config
  (dashboard-setup-startup-hook)
  :init
  ;; show Dashboard in frames created with emacsclient -c
  (setq initial-buffer-choice (lambda () (get-buffer-create "*dashboard*")))
  ;; add icons to the widget headings and their items
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-file-icons t)
  ;; Set the title
  ;; (setq dashboard-banner-logo-title "Welcome to Funmacs")
  (setq dashboard-banner-logo-title
        (message "Funmacs ready in %s with %d garbage collections."
                 (format "%.2f seconds"
                         (float-time
                          (time-subtract after-init-time before-init-time)))
                 gcs-done))
  ;; Set the banner
  (setq dashboard-startup-banner "~/.emacs.d/assets/txt/logo.txt")
  ;; Value can be
  ;; - nil to display no banner
  ;; - 'official which displays the official emacs logo
  ;; - 'logo which displays an alternative emacs logo
  ;; - 1, 2 or 3 which displays one of the text banners
  ;; - "path/to/your/image.gif", "path/to/your/image.png" or "path/to/your/text.txt" which displays whatever gif/image/text you would prefer
  ;; - a cons of '("path/to/your/image.png" . "path/to/your/text.txt")
  ;; Content is not centered by default. To center, set
  (setq dashboard-center-content t)
  ;; choose the default project managment backend
  (setq dashboard-projects-backend 'project-el)
  ;; To customize which widgets are displayed
  (setq dashboard-items '((recents  . 5)
                          (bookmarks . 5)
                          (projects . 5)
                          (agenda . 5)
                          (registers . 5)))
  ;; set naviagtion banner.
  (setq dashboard-set-navigator t)
  ;; navigation buttons.
  (setq dashboard-navigator-buttons
        `(( ;; homepage navigation tag.
           (,(all-the-icons-faicon "cloud" :height 1.1 :v-adjust 0.0)
            "Homepage"
            "Browse Homepage"
            (lambda (&rest _) (browse-url "https://funamcs.muja.dev")))
           ;; github navigation tag.
           (,(all-the-icons-octicon "mark-github" :height 1.1 :v-adjust 0.0)
            "GitHub"
            "Browse GitHub"
            (lambda (&rest _) (browse-url "https://github.com/xmawja/funmacs")))
           ;; twitter navigation tag.
           (,(all-the-icons-faicon "twitter" :height 1.1 :v-adjust 0.0)
            "Twitter"
            "Browse Twitter"
            (lambda (&rest _) (browse-url "https://www.twitter.com/xmawja")))
           ;; linkedin navigation tag.
           (,(all-the-icons-faicon "linkedin" :height 1.1 :v-adjust 0.0)
            "LinkedIn"
            "Browse LinkedIn"
            (lambda (&rest _) (browse-url "https://www.linkedin.com/in/xmawja")))))
        )
  ) ;; end dashboard.el

;; end 'dashboard' file.
