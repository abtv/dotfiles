;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here!
;; Remember, you do NOT need to run 'doom sync' after modifying this file!

(setq user-full-name "abtv"
      user-mail-address "")

(setq doom-theme 'adwaita)
(with-eval-after-load "adwaita-theme"
  (custom-theme-set-faces
   'adwaita
   '(default ((t (:background "#CCCCCC"))))))

(setq org-directory "~/org/")
(with-eval-after-load 'org
 (setq
   org-agenda-span 7
   org-agenda-start-on-weekday 1))

(map! :map general-override-mode-map
      :n "C-j" #'previous-buffer
      :n "C-k" #'next-buffer)

(map! :leader
      :desc "Kill this buffer" "d" #'kill-this-buffer)

(setq display-line-numbers-type nil)
