;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here!
;; Remember, you do NOT need to run 'doom sync' after modifying this file!

;; General
(setq user-full-name "abtv"
      user-mail-address "")
(setq display-line-numbers-type nil)
(setq confirm-kill-emacs nil)
(auto-save-visited-mode +1)
(setq auto-save-visited-interval 1)

;; Color theme
(setq doom-theme 'adwaita)
(with-eval-after-load "adwaita-theme"
  (custom-theme-set-faces
   'adwaita
   '(default ((t (:background "#CCCCCC"))))))

;; Org mode
(setq org-directory "~/Dropbox/")
(with-eval-after-load 'org
 (setq
   org-agenda-start-day nil
   org-agenda-span 7
   org-agenda-start-on-weekday 1))

;; Key bindings
(map! :map general-override-mode-map
      :n "C-j" #'previous-buffer
      :n "C-k" #'next-buffer
      :n "C-p" #'find-file
      :n "C-o" #'neotree-toggle)
(map! :leader
      :desc "Kill this buffer" "d" #'kill-this-buffer)
(map! :leader
      :desc "Show current week agenda" "a" #'org-agenda-list)

;; Hide neotree on file open
(defun neo-open-file-hide (full-path &optional arg)
  "Open a file node and hides tree."
  (neo-global--select-mru-window arg)
  (find-file full-path)
  (neotree-hide))
(defun neotree-enter-hide (&optional arg)
  "Enters file and hides neotree directly"
  (interactive "P")
  (neo-buffer--execute arg 'neo-open-file-hide 'neo-open-dir))
(add-hook
 'neotree-mode-hook
 (lambda ()
   (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter-hide)))
