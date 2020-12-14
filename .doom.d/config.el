;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

; Don't ask for quit confirmation
(setq confirm-kill-emacs nil)

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
   '(default ((t (:background "#cccccc"))))))

; Set Magit colors
(custom-set-faces
 '(magit-section-highlight ((t (:foreground "#fafafa" :background "#5f87d7" :inherit nil)))))
(custom-set-faces
 '(magit-log-author ((t (:foreground "#00ff00" :background nil :inherit nil)))))

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

; key bindings (faster to type)
(global-set-key (kbd "C-k") #'switch-to-next-buffer)
(global-set-key (kbd "C-j") #'switch-to-prev-buffer)

; key bindings (slower to type)
(map! :leader
      :desc "Run Jest test under cursor." "m t" #'jest-function)


; abtv's settings
(projectile-add-known-project "~/work/backend")
(projectile-add-known-project "~/work/portal-spa")
(projectile-add-known-project "~/work/signup")
(projectile-add-known-project "~/work/salesforce")
(projectile-add-known-project "~/work/office")
(projectile-add-known-project "~/work/scraper")

; Enable multiple major modes
(require 'mmm-auto)
(setq mmm-global-mode t)
(setq mmm-submode-decoration-level 0)                           ; Turn off background highlight

; Vue mode
(add-to-list 'auto-mode-alist '("\\.vue\\'" . javascript-mode)) ; Enable JS mode for vue files
(add-to-list 'auto-mode-alist '("\\.vue\\'" . css-mode))        ; Enable CSS mode for vue files
(add-hook 'vue-mode-hook #'lsp!)
