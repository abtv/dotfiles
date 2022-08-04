;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; General
(setq user-full-name "abtv"
      user-mail-address "")
(auto-save-visited-mode +1)
(setq display-line-numbers-type t)
(setq org-directory "~/org/")
(setq doom-font (font-spec :family "JetBrains Mono" :size 15))


; Set color theme
(load-theme 'whiteboard t)
; Make the default background not so bright
(with-eval-after-load "whiteboard-theme"
  ; this needed for Emacs with UI
  (set-background-color "#e0e0e0")
  ; this needed for Emacs in terminal
  (custom-theme-set-faces
   'whiteboard
   '(default ((t (:background "#cfcfcf"))))))


;; Key bindings for better arrows
(map! "s-h" #'left-char
      "s-l" #'right-char
      "s-j" #'next-line
      "s-k" #'previous-line)


;; Key bindings for buffers
(map! "s-{" #'previous-buffer
      "s-}" #'next-buffer
      "s-w" #'kill-current-buffer
      "s-s" #'save-buffer)


;; Key bindings to resemble my IDE
(map! "s-p" #'+treemacs/toggle
      "s-P" #'treemacs-find-file
      "s-f" #'+default/search-project
      "s-;" #'projectile-find-file
      "s-," #'+vertico/switch-workspace-buffer
      "s-." #'find-file)


;; My inbox, projects, tasks and hints
(map! "s-i" (lambda () (interactive) (find-file "~/work/notes/notes.org")))
