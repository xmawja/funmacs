;;===================== DASHBOARD =========================;;
;; Enable dashboard.el
(use-package dashboard
  :straight t
  :config
  (dashboard-setup-startup-hook)
  :init
  ;; show Dashboard in frames created with emacsclient -c
  (setq initial-buffer-choice (lambda () (get-buffer-create "*dashboard*")))
  )


