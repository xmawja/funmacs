;;==================== ALL THE ICONS =====================;;
;; Enable all-the-icons.el
(use-package  all-the-icons
  :straight t
  :init
  (require 'treemacs-all-the-icons)
  (treemacs-load-theme "all-the-icons")
  :if (display-graphic-p))
