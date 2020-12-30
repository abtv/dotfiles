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
(custom-set-faces
 '(magit-header-line ((t (:foreground "#875f00" :background "#cccccc" :inherit nil)))))

; Customize Git & Magit
(setq doom-modeline-vcs-max-length 32)
(require 'magit)
(setq magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1)


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

; Key bindings (faster to type)
(map! "C-k" #'switch-to-next-buffer)
(map! :map magit-mode-map :n "C-k" #'switch-to-next-buffer)
(map! :map vterm-mode-map :n "C-k" #'switch-to-next-buffer)
(map! "C-j" #'switch-to-prev-buffer)
(map! :map magit-mode-map :n "C-j" #'switch-to-prev-buffer)
(map! :map vterm-mode-map :n "C-j" #'switch-to-prev-buffer)


; Key bindings (slower to type)
; Config
(map! :leader :desc "Open init.el" "a i" #'doom/goto-private-init-file)
(map! :leader :desc "Open config.el" "a c" #'doom/goto-private-config-file)
(map! :leader :desc "Open package.el" "a p" #'doom/goto-private-packages-file)
; Windows
(map! :leader :desc "Maximize current buffer window" "w m" #'doom/window-maximize-buffer)
; Magit
(map! :leader :desc "Git status" "g s" #'magit-status-here)
(map! :leader :desc "Git status" "g g" nil) ; use SPC g s instead of the standard keybinding
(map! :leader :desc "Git status" "g L" nil) ; use SPC g H instead of the standard keybinding
(map! :leader :desc "Git log all" "g h" #'magit-log-all-maximized)
(map! :leader :desc "Git log all" "g h" #'magit-log-current-maximized)
(map! :leader :desc "Git log current file" "g H" #'magit-log-buffer-file-maximized)
(map! :leader :desc "Pull from pushremote" "g l" #'magit-pull-from-pushremote)
(map! :leader :desc "Push to pushremote" "g p" #'magit-push-current-to-pushremote)
(map! :leader :desc "Git merge" "g m" #'magit-merge)
(map! :map magit-mode-map :nv "q" #'magit-kill-this-buffer)
(map! :map magit-revision-mode-map :nv "q" #'magit-kill-this-buffer-and-window)
; Terminal
(map! :leader :desc "Open terminal fullscreen" "o t" #'+vterm/here)
; Toggles
(map! :leader :desc "Toggle line numbers" "t l" #'toggle-line-numbers)
; Jest
(map! :leader :desc "Run Jest test" "m t" #'jest-function)


; abtv's settings
(projectile-add-known-project "~/work/backend")
(projectile-add-known-project "~/work/portal-spa")
(projectile-add-known-project "~/work/signup")
(projectile-add-known-project "~/work/salesforce")
(projectile-add-known-project "~/work/office")
(projectile-add-known-project "~/work/scraper")


; Vue mode
(add-to-list 'auto-mode-alist '("\\.vue\\'" . javascript-mode)) ; Enable JS mode for vue files
(add-hook 'vue-mode-hook #'lsp!)


; Functions for customizations
(defun magit-log-all-maximized ()
(defun magit-log-current-maximized ()
  ""
  (interactive)
  (magit-log-all '("-n100" "--graph" "--decorate"))
  (magit-log-current)
  (doom/window-maximize-buffer))

(defun magit-log-buffer-file-maximized ()
  ""
  (interactive)
  (magit-log-buffer-file)
  (doom/window-maximize-buffer))

(defun magit-kill-this-buffer-and-window ()
  ""
  (interactive)
  (magit-kill-this-buffer)
  (delete-window))

(defun toggle-line-numbers ()
  "As doom/toggle-line-numbers but whithout relative line numbers."
  (interactive)
  (defvar doom--line-number-style display-line-numbers-type)
  (let* ((styles `(t ,(if visual-line-mode 'visual) nil))
         (order (cons display-line-numbers-type (remq display-line-numbers-type styles)))
         (queue (memq doom--line-number-style order))
         (next (if (= (length queue) 1)
                   (car order)
                 (car (cdr queue)))))
    (setq doom--line-number-style next)
    (setq display-line-numbers next)
    (message "Switched to %s line numbers"
             (pcase next
               (`t "normal")
               (`nil "disabled")
               (_ (symbol-name next))))))
