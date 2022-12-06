;;==================== KEY BINDING ====================;;
;; WHICH-KEY
(use-package which-key
  :straight t
  :init
   (which-key-mode)
   (setq which-key-idle-delay 0.3)
   (which-key-setup-minibuffer))

;; global keybinding
;; recompile
(global-set-key (kbd "<f12>") #'recompile) 
