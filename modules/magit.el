;;================= MAGIT =================;;
;; Enable magit
(use-package magit
  :straight t
  :bind
  (:map global-map
		("C-x g" . magit-status))
)

;; Options
;; magit todos
(use-package magit-todos
  :defer t)
