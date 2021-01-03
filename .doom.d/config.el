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
  ; this needed for Emacs with UI
  (set-background-color "#d0d0d0")
  ; this needed for Emacs in terminal
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
(setq doom-font (font-spec :family "JetBrains Mono" :size 15 :weight 'bold))
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
(map! :map org-mode-map :n "C-k" #'switch-to-next-buffer)
(map! "C-j" #'switch-to-prev-buffer)
(map! :map magit-mode-map :n "C-j" #'switch-to-prev-buffer)
(map! :map vterm-mode-map :n "C-j" #'switch-to-prev-buffer)
(map! :map org-mode-map :n "C-j" #'switch-to-prev-buffer)


; Key bindings (slower to type)
; Config
(map! :leader :desc "Open init.el" "a i" #'doom/goto-private-init-file)
(map! :leader :desc "Open config.el" "a c" #'doom/goto-private-config-file)
(map! :leader :desc "Open package.el" "a p" #'doom/goto-private-packages-file)
; Workspaces
(map! :leader :desc "Switch to another workspace" "i" #'+workspace/switch-to)
; Windows
(map! :leader :desc "Maximize current buffer window" "w m" #'doom/window-maximize-buffer)
; Buffers
(map! :leader :desc "" "b d" nil) ; use SPC k instead
(map! :leader :desc "Save current buffer if modified" "s" #'save-buffer)
(map! :leader :desc "Kill current buffer if modified" "d" #'kill-current-buffer)
; Search
(map! :leader :desc "Search in current project" "f" #'+default/search-project)
; Magit
(map! :leader :desc "Git status" "g L" nil) ; use SPC i instead of the standard keybinding
(map! :leader :desc "Git switch branch" "g b" nil) ; use SPC b instead of the standard keybinding
(map! :leader :desc "Git switch branch" "g B" nil) ; use SPC B instead of the standard keybinding
(map! :leader :desc "Git switch branch" "b" #'magit-branch-checkout)
(map! :leader :desc "Git blame" "B" #'magit-blame-addition)
(map! :leader :desc "Git status" "g g" #'magit-status-here)
(map! :leader :desc "Git log all" "j" #'magit-log-head-maximized)
(map! :leader :desc "Git log current file" "k" #'magit-log-buffer-file-maximized)
(map! :leader :desc "Pull from pushremote" "g l" #'magit-pull-from-pushremote)
(map! :leader :desc "Push to pushremote" "g p" #'magit-push-current-to-pushremote)
(map! :leader :desc "Git merge" "g m" #'magit-merge)
(map! :map magit-mode-map :nv "q" #'magit-kill-this-buffer)
(map! :map magit-revision-mode-map :nv "q" #'magit-kill-this-buffer-and-window)
; Projectile
(map! :leader :desc "Switch project" "o" #'counsel-projectile-switch-project)
; Treeemacs
(map! :leader :desc "Project sidebar" "p" #'+treemacs/toggle)
; Terminal
(map! :leader :desc "Open terminal fullscreen" "t" #'+vterm/here)
; Line numbers toggle
(map! :leader :desc "Toggle line numbers" "l" #'toggle-absolute-line-numbers)
; Jest
(map! :leader :desc "Run Jest test" "y" #'jest-function)


; Projectile settings
(setq projectile-auto-discover nil)
(setq projectile-project-search-path '("~/sandbox/" "~/work/"))
(projectile-discover-projects-in-search-path)


; Vue mode
(add-to-list 'auto-mode-alist '("\\.vue\\'" . javascript-mode)) ; Enable JS mode for vue files
(add-hook 'vue-mode-hook #'lsp!)


; Salesforce mode
(add-to-list 'auto-mode-alist '("\\.cls\\'" . java-mode)) ; Enable Java mode for cls files


; Functions for customizations
(defun magit-log-head-maximized ()
  ""
  (interactive)
  (magit-log-head '("-n100" "--graph" "--decorate"))
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

(defun toggle-absolute-line-numbers ()
  ""
  (interactive)
  (defvar doom--line-number-style display-line-numbers-type)
  (let* ((styles `(t  nil))
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
               (`nil "disabled")))))
