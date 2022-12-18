;;===================== PROJECTILE ======================;;
;; Enable projectile.el
(use-package projectile
  :straight t
  :init
  (projectile-mode +1)
  :bind (:map projectile-mode-map
              ("s-p" . projectile-command-map)
              ("C-c p" . projectile-command-map)))

