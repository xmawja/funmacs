;;================ ORG MODE ================;;
;; Enable org-mode.el
(use-package org
  :straight t
  :after org
  :bind
  (:map global-map
		("C-c a" . org-agenda) ;; open agenda
		("C-c l" . org-store-link)) ;; stored agenda
  :init
  ;;(setq-default major-mode 'org-mode) if nesesery
  ;; set the deafault org directory
  (setq org-directory (expand-file-name "~/Documents/org"))
  ;; set the default notes file places
  (setq org-default-notes-file (concat org-directory "/notes.org"))
  ;; set the default agenda files directory
  (setq org-agenda-files '("~/Documents/org/agenda.org" ))
  ;; activaae loge done
  (setq org-log-done t)
  ;; closing timestamp or next line
  (setq org-log-done 'time)
  ;; take a note before closing the task.
  (setq org-log-done 'note)
  :config
  (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
  )
