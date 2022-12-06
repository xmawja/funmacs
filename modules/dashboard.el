;;===================== DASHBOARD =========================;;
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
  (setq dashboard-banner-logo-title "Welcome to Funmacs")
  ;; Content is not centered by default. To center, set
  (setq dashboard-center-content t)
  ;; To customize which widgets are displayed
  (setq dashboard-items '((recents  . 5)
                        (bookmarks . 5)
                        (projects . 5)
                        (agenda . 5)
                        (registers . 5)))
  )


