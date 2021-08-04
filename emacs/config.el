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

; Key bindings (faster to type)
(map! "C-k" #'switch-to-next-buffer)
(map! :map org-mode-map :n "C-k" #'switch-to-next-buffer)
(map! "C-j" #'switch-to-prev-buffer)
(map! :map org-mode-map :n "C-j" #'switch-to-prev-buffer)


; Key bindings (slower to type)
; Config
(map! :leader :desc "Open init.el" "a i" #'doom/goto-private-init-file)
(map! :leader :desc "Open config.el" "a c" #'doom/goto-private-config-file)
(map! :leader :desc "Open package.el" "a p" #'doom/goto-private-packages-file)

; Windows
(map! :leader :desc "Maximize current buffer window" "w m" #'doom/window-maximize-buffer)

; Buffers
(map! :leader :desc "" "b d" nil) ; use SPC k instead
(map! :leader :desc "Save current buffer if modified" "s" #'save-buffer)
(map! :leader :desc "Kill current buffer if modified" "d" #'kill-current-buffer)

; Line numbers toggle
(map! "C-l" :desc "Toggle line numbers"  #'toggle-absolute-line-numbers)

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
