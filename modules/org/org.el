;;================ ORG MODE ================;;
;; Enable org-mode.el
(use-package org
  :straight t
  :config
  (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
  )
