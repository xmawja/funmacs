;;; corfu.el -*- lexical-binding: t; -*-
;; This file has been generated from funmacs.org file. DO NOT EDIT.
;; Sources are available from https://github.com/xmawja/funmacs

;; Copyright (C) 2022 Muja Siyam

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

;; Enable corfu.el
(use-package corfu
   :straight (corfu :files (:defaults "extensions/*")
                    :includes
		    (corfu-echo       ;; corfu-echo-mode displays a brief candidate documentation in the echo area.
		     corfu-history    ;; corfu-history-mode remembers selected candidates and sorts the candidates by their history position.
		     corfu-indexed    ;; corfu-indexed-mode allows you to select indexed candidates with prefix arguments.
		     corfu-info       ;; Actions to access the candidate location and documentation.
		     corfu-popupinfo  ;; Display candidate documentation or source in a popup next to the candidate menu.
		     corfu-quick      ;; Commands to select using Avy-style quick keys.
		     ))
  ;; Optional customizations
  :custom
  (corfu-cycle t)                ;; Enable cycling for `corfu-next/previous'
  (corfu-auto t)                 ;; Enable auto completion
  (corfu-separator ?\s)          ;; Orderless field separator
  (corfu-quit-at-boundary nil)   ;; Never quit at completion boundary
  ;; (corfu-quit-no-match nil)      ;; Never quit, even if there is no match
  ;; (corfu-preview-current nil)    ;; Disable current candidate preview
  ;; (corfu-preselect-first nil)    ;; Disable candidate preselection
  ;; (corfu-on-exact-match nil)     ;; Configure handling of exact matches
  (corfu-scroll-margin 5)        ;; Use scroll margin

  ;; Enable Corfu only for certain modes.
  ;; :hook ((prog-mode . corfu-mode)
  ;;        (shell-mode . corfu-mode)
  ;;        (eshell-mode . corfu-mode))

  ;; Recommended: Enable Corfu globally.
  ;; This is recommended since Dabbrev can be used globally (M-/).
  ;; See also `corfu-excluded-modes'.
  :init
  (global-corfu-mode)
  ;; Enable popupinfo
  (corfu-popupinfo-mode t)
  ;; Aggressive completion, cheap prefix filtering.
  (setq corfu-auto t
              corfu-auto-delay 0
              corfu-auto-prefix 0
              completion-styles '(basic))
  :hook
  ;; yasnippet suggestion
  (eglot-managed-mode . ms/eglot-capf)
  :config
  ;; add suggestion for yasnippets when using eglot
  (defun ms/eglot-capf ()
    (setq-local completion-at-point-functions
		(list (cape-super-capf
		       #'eglot-completion-at-point
                       (cape-company-to-capf #'company-yasnippet)))))
  )

;; Use Dabbrev with Corfu!
(use-package dabbrev
  ;; Swap M-/ and C-M-/
  :bind (("M-/" . dabbrev-completion)
         ("C-M-/" . dabbrev-expand))
  ;; Other useful Dabbrev configurations.
  :custom
  (dabbrev-ignored-buffer-regexps '("\\.\\(?:pdf\\|jpe?g\\|png\\)\\'")))

;; show icons at complation point.
;; Completion kind text/icon prefix labelling for emacs in-region completion
(use-package kind-icon
  :ensure t
  :after corfu
  :custom
  (kind-icon-default-face 'corfu-default) ; to compute blended backgrounds correctly
  :config
  (add-to-list 'corfu-margin-formatters #'kind-icon-margin-formatter))
