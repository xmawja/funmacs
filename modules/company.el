;;================== COMPANY MODE ====================;;
;; Enable company.el
(use-package company
  :after lsp-mode
  :hook
  (prog-mode . company-mode)
  ;; enable emacs lisp mode
  (emacs-lisp-mode . company-mode)
  ;; set company backends as default
  (emacs-lisp-mode . (lambda ()
					   (setq-local company-backends '(company-elisp))))
  (eglot-managed-mode-hook . (lambda ()
                                     (add-to-list 'company-backends
                            :                      '(company-capf :with company-yasnippet))))
  :bind (:map company-active-map
         ("<tab>" . company-complete-selection))
        (:map lsp-mode-map
         ("<tab>" . company-indent-or-complete-common))
  :custom
  (company-minimum-prefix-length 1)
  (company-idle-delay 0.0))

(use-package company-box
  :hook (company-mode . company-box-mode))
