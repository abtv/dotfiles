;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; General
(setq user-full-name "abtv"
      user-mail-address "")
(auto-save-visited-mode +1)
(setq display-line-numbers-type t)
(setq org-directory "~/org/")


; Set color theme
(load-theme 'adwaita t)
; Make the default background not so bright
(with-eval-after-load "adwaita-theme"
  ; this needed for Emacs with UI
  (set-background-color "#d0d0d0")
  ; this needed for Emacs in terminal
  (custom-theme-set-faces
   'adwaita
   '(default ((t (:background "#cfcfcf"))))))


;; Key bindings
(map! :map general-override-mode-map
      :n "C-j" #'previous-buffer
      :n "C-k" #'next-buffer)
