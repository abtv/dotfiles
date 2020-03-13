;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

(setq user-full-name "abtv"
      user-mail-address "")

(setq doom-font (font-spec :family "monospace" :size 14))

(setq doom-theme 'adwaita)
(with-eval-after-load "adwaita-theme"
  (custom-theme-set-faces
   'adwaita
   '(default ((t (:background "#CCCCCC"))))))

(setq org-directory "~/org/")

(setq display-line-numbers-type nil)
