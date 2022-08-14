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
(load-theme 'tango t)
; Make the default background not so bright
(with-eval-after-load "tango-theme"
  ; this needed for Emacs with UI
  (set-background-color "#c0c0c0")
  ; this needed for Emacs in terminal
  (custom-theme-set-faces
   'tango
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
(map! "s-f" #'+default/search-project
      "s-;" #'projectile-find-file)

;; Disable the keys
(map! "s-p" #'ignore
      "s-," #'ignore
      "s-." #'ignore)


;; My inbox, projects, tasks and hints
(map! "s-i" (lambda () (interactive) (find-file "~/work/notes/notes.txt")))

(defun update-frame ()
  (interactive)
  (unless (eq 'maximised (frame-parameter nil 'fullscreen))
    (add-to-list 'default-frame-alist '(height . 50))
    (add-to-list 'default-frame-alist '(width . 140))
    (modify-frame-parameters
     nil '((user-position . t) (top . 0.16) (left . 0.2)))))

(update-frame)
