;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

; Clock format
(setq display-time-format "%H:%M")
; Show clock
(display-time-mode 1)


; Set color theme
(load-theme 'adwaita t)
; Make the default background not so bright
(with-eval-after-load "adwaita-theme"
  (custom-theme-set-faces
   'adwaita
   '(default ((t (:background "#CCCCCC"))))))
; Make it fullscreen
(toggle-frame-maximized)


; set font
(setq doom-font (font-spec :family "JetBrains Mono" :size 16 :weight 'semi-bold))
; disable line numbers
(setq display-line-numbers-type nil)


; GPG configuration, email clients, file templates and snippets.
(setq user-full-name "Andrey Butov"
      user-mail-address "")
; where to put org files
(setq org-directory "~/org/")

(setq auth-sources
    '((:source "~/.credentials/github.token")))

; key bindings
(map! :leader
      :desc "Run Jest test under cursor." "m t" #'jest-function)


;; abtv's settings
(projectile-add-known-project "~/work/backend")
(projectile-add-known-project "~/work/portal-spa")
(projectile-add-known-project "~/work/signup")
(projectile-add-known-project "~/work/salesforce")
(projectile-add-known-project "~/work/office")
(projectile-add-known-project "~/work/scraper")


; Vue mode
(add-hook 'vue-mode-hook #'lsp!)
