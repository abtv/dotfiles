;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

(setq frame-title-format "Emacs")
(setq doom-theme 'modus-operandi-tritanopia)
(add-hook 'window-setup-hook (lambda ()
                               (set-background-color "#f0f0f0")))

(setq display-line-numbers-type nil)
(setq confirm-kill-emacs nil)
(setq org-directory "~/org/")

(add-to-list 'default-frame-alist '(width  . 120)) ; character columns
(add-to-list 'default-frame-alist '(height . 50))  ; lines of text
(set-face-attribute 'default nil :height 150)

;; Setup J and K keys
(defun previous-lines ()
  (interactive)
  (evil-previous-line 10))
(defun next-lines ()
  (interactive)
  (evil-next-line 10))
(evil-global-set-key 'normal "J" 'next-lines)
(evil-global-set-key 'normal "K" 'previous-lines)

(global-set-key (kbd "C-l") 'doom/toggle-line-numbers)
(map! :desc "Delete current buffer" :leader "d" 'kill-current-buffer)
