;;; ox.el -*- lexical-binding: t; -*-
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

;;; code

;; Enable 'ox.el'
(use-package ox
  :config
  (setq org-export-with-tags nil)
  ;; Auto export acronyms as small caps
  ;; Copied from tecosaur
  (defun org-latex-substitute-verb-with-texttt (content)
    "Replace instances of \\verb with \\texttt{}."
    (replace-regexp-in-string
     "\\\\verb\\(.\\).+?\\1"
     (lambda (verb-string)
       (replace-regexp-in-string
        "\\\\" "\\\\\\\\" ; Why elisp, why?
        (org-latex--text-markup (substring verb-string 6 -1) 'code '(:latex-text-markup-alist ((code . protectedtexttt))))))
     content))

  (defun org-export-filter-text-acronym (text backend _info)
    "Wrap suspected acronyms in acronyms-specific formatting.
Treat sequences of 2+ capital letters (optionally succeeded by \"s\") as an acronym.
Ignore if preceeded by \";\" (for manual prevention) or \"\\\" (for LaTeX commands).

TODO abstract backend implementations."
    (let ((base-backend
           (cond
            ;; ((org-export-derived-backend-p backend 'latex) 'latex)
            ((org-export-derived-backend-p backend 'html) 'html)))
          (case-fold-search nil))
      (when base-backend
        (replace-regexp-in-string
         "[;\\\\]?\\b[A-Z][A-Z]+s?\\(?:[^A-Za-z]\\|\\b\\)"
         (lambda (all-caps-str)
           (cond ((equal (aref all-caps-str 0) ?\\) all-caps-str)                ; don't format LaTeX commands
                 ((equal (aref all-caps-str 0) ?\;) (substring all-caps-str 1))  ; just remove not-acronym indicator char ";"
                 (t (let* ((final-char (if (string-match-p "[^A-Za-z]" (substring all-caps-str -1 (length all-caps-str)))
                                           (substring all-caps-str -1 (length all-caps-str))
                                         nil)) ; needed to re-insert the [^A-Za-z] at the end
                           (trailing-s (equal (aref all-caps-str (- (length all-caps-str) (if final-char 2 1))) ?s))
                           (acr (if final-char
                                    (substring all-caps-str 0 (if trailing-s -2 -1))
                                  (substring all-caps-str 0 (+ (if trailing-s -1 (length all-caps-str)))))))
                      (pcase base-backend
                        ('latex (concat "\\acr{" (s-downcase acr) "}" (when trailing-s "\\acrs{}") final-char))
                        ('html (concat "<span class='smallcap'>" (s-downcase acr) "</span>" (when trailing-s "<small>s</small>") final-char)))))))
         text t t))))

  (add-to-list 'org-export-filter-plain-text-functions
               #'org-export-filter-text-acronym)

  ;; We won't use `org-export-filter-headline-functions' because it
  ;; passes (and formats) the entire section contents. That's no good.

  (defun org-html-format-headline-acronymised (todo todo-type priority text tags info)
    "Like `org-html-format-headline-default-function', but with acronym formatting."
    (org-html-format-headline-default-function
     todo todo-type priority (org-export-filter-text-acronym text 'html info) tags info))
  (setq org-html-format-headline-function #'org-html-format-headline-acronymised)

  ;; (defun org-latex-format-headline-acronymised (todo todo-type priority text tags info)
  ;;   "Like `org-latex-format-headline-default-function', but with acronym formatting."
  ;;   (org-latex-format-headline-default-function
  ;;    todo todo-type priority (org-latex-substitute-verb-with-texttt
  ;;                             (org-export-filter-text-acronym text 'latex info)) tags info))
  ;; (setq org-latex-format-headline-function #'org-latex-format-headline-acronymised)
  ;; KOMA-scripts
  (setq org-latex-default-class "koma-article")
  :init
  ;; Add KOMA-scripts classes to org export
  (add-to-list 'org-latex-classes
               '("koma-letter" "\\documentclass[11pt]{scrletter}"
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

  (add-to-list 'org-latex-classes
               '("koma-article" "\\documentclass[11pt]{scrartcl}"
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

  (add-to-list 'org-latex-classes
               '("koma-report" "\\documentclass[11pt]{scrreprt}"
                 ("\\part{%s}" . "\\part*{%s}")
                 ("\\chapter{%s}" . "\\chapter*{%s}")
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))

  (add-to-list 'org-latex-classes
               '("koma-book" "\\documentclass[11pt]{scrbook}"
                 ("\\part{%s}" . "\\part*{%s}")
                 ("\\chapter{%s}" . "\\chapter*{%s}")
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))

  )


(use-package ox-extra
  :config
  (ox-extras-activate '(ignore-headlines))
  )

(use-package ox-latex
  :config
  ;; (setq org-latex-pdf-process
  ;;       '("latexmk -pdflatex='%latex -shell-escape -bibtex -interaction=nonstopmode' -pdf -output-directory=%o -f %f"))

  ;; Default packages
  (setq org-export-headline-levels 5
        org-latex-default-packages-alist
        '(("AUTO" "inputenc" t ("pdflatex" "lualatex"))
          ("T1" "fontenc" t ("pdflatex"))
          ;;Microtype
          ;;- pdflatex: full microtype features, fast, however no fontspec
          ;;- lualatex: good microtype feature support, however slow to compile
          ;;- xelatex: only protrusion support, fast compilation
          ("activate={true,nocompatibility},final,tracking=true,kerning=true,spacing=true,factor=1100,stretch=10,shrink=10"
           "microtype" nil ("pdflatex"))
          ("activate={true,nocompatibility},final,tracking=true,factor=1100,stretch=10,shrink=10"
           "microtype" nil ("lualatex"))
          ("protrusion={true,nocompatibility},final,factor=1100,stretch=10,shrink=10"
           "microtype" nil ("xelatex"))
          ("dvipsnames,svgnames" "xcolor" nil)
          ("colorlinks=true, linkcolor=DarkBlue, citecolor=BrickRed, urlcolor=DarkGreen" "hyperref" nil)))
  )

(use-package org-latex-preview
  :after org
  :hook ((org-mode . org-latex-preview-auto-mode))
  :config
  (pushnew! org-latex-preview--ignored-faces 'org-list-dt 'fixed-pitch)
  (setq org-latex-preview-numbered     t
        org-startup-with-latex-preview t
        org-latex-preview-width 0.6
        org-latex-preview-processing-indicator 'face
        ;;live previewing
        org-latex-preview-live-preview-fragments t
        org-latex-preview-auto-generate 'live
        org-latex-preview-debounce 0.5
        org-latex-preview-throttle 0.2
        org-latex-preview-live-preview-fragments nil
        ;;previewing preamble
        org-latex-preview-preamble
        "\\documentclass{article}\n[DEFAULT-PACKAGES]\n[PACKAGES]
\\usepackage[dvipsnames,svgnames]{xcolor}
\\usepackage[sfdefault]{AlegreyaSans}
\\usepackage{newtxsf}

\\definecolor{DarkRed}{RGB}{204,36,29}
\\definecolor{ForestGreen}{RGB}{184,187,38}
\\definecolor{red}{RGB}{251,73,52}
\\definecolor{orange}{RGB}{254,128,25}
\\definecolor{blue}{RGB}{69,133,136}
\\definecolor{green}{RGB}{184,187,38}
\\definecolor{yellow}{RGB}{250, 189, 47}
\\definecolor{purple}{RGB}{211, 134, 155}
")
  )

