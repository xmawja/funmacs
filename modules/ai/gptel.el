;;; kind-icon.el -*- lexical-binding: t; -*-
;; This file has been generated from funmacs.org file. DO NOT EDIT.
;; Sources are available from https://github.com/xmawja/funmacs

;; Copyright (C) 2022 - 2023 Muja Siyam

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

;; Enable consult-eglot.el with consult!.
(use-package gptel
 
  :config
  (setq gptel-api-key (auth-source-pick-first-password :host "openai.com"))
  (setq gptel-default-mode 'org-mode)
  (setq gptel-model "gpt-3.5-turbo")

  :custom
  (defun ad/ai-from-anywhere ()
    (interactive)
    (let* ((screen-width (display-pixel-width))
           (screen-height (display-pixel-height))
           (frame-width (/ screen-width 3))
           (frame-height screen-height)
           (frame-left (- screen-width frame-width))
           (frame-top 0)
           (chat-frame (make-frame `((window-system . ns)  ;;change this if you are not on macOS. For example you can use "x" instead of "ns" for x systems. Refer to make-frame documentation for more details
                                     (top . ,frame-top)
                                     (left . ,frame-left)
                                     (width . (text-pixels . ,frame-width))
                                     (heigth . (text-pixels . ,frame-height))
                                     (minibuffer . t)
                                     ))))
      (select-frame chat-frame)
      )
    (add-hook 'gptel-post-response-hook (lambda () (goto-char (point-max))))
    (gptel "My:AI Chat" gptel-api-key nil)
    (switch-to-buffer "My:AI Chat")
    (delete-other-windows)
    )

  ) ;; End


;; end 'consult-eglot' file.
