; UI
(setq default-frame-alist
       '((height . 40)
         (width . 120)
         (left . 0)
         (top . 0)
         (vertical-scroll-bars . nil)
         (horizontal-scroll-bars . nil)
         (tool-bar-lines . 0)))
(set-face-attribute 'default nil :height 150) ; height = font_size * 10
(blink-cursor-mode -1)
(setq ring-bell-function 'ignore)
(line-number-mode   t)
(global-linum-mode  t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
;(package-refresh-contents)  ; ucomment it to update deps
(package-initialize)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Setup packages
(setq packages
  '(evil
    evil-collection
    which-key
    gcmh
    general
    ))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(dolist (package packages)
  (unless (package-installed-p package)
    (package-install package)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Evil-mode
(setq evil-want-integration t)
(setq evil-want-keybinding nil)
(setq evil-vsplit-window-right t)
(setq evil-split-window-below t)
(evil-mode)
(evil-collection-init)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Which-key
(which-key-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; GC settings
(gcmh-mode 1)

(add-hook 'emacs-startup-hook
    (lambda ()
	(message "*** Emacs loaded in %s with %d garbage collections."
	    (format "%.2f seconds"
	    (float-time
	    (time-subtract after-init-time before-init-time)))
	gcs-done)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Dired
(setq vc-follow-symlinks t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Global keybindings
(global-set-key (kbd "s-o") 'open-dired)
(global-set-key (kbd "s-s") 'save-buffer)
(global-set-key (kbd "s-w") 'kill-current-buffer)
(global-set-key (kbd "s-{") 'previous-buffer)
(global-set-key (kbd "s-}") 'next-buffer)

; Evil keybindings
(general-evil-setup t)
(nvmap :prefix "SPC"
  "x" '(execute-extended-command :which-key "M-x")
  "q" '(save-buffers-kill-emacs :which-key "Quit Emacs")
  "d" '(kill-current-buffer :which-key "Close current buffer")
  "o" '(open-dired :which-key "Open dired")

  ; Files
  "e" '(open-emacs-config :which-key "Open Emacs config")
  "i" '(open-notes-txt :which-key "Open notes.txt")

  ; Windows
  "w w" '(next-window-any-frame :which-key "Switch to next window")
  "w m" '(delete-other-windows :which-key "Maximize current window")
  "w c" '(delete-window :which-key "Delete current window")
  "w h" '(split-window-horizontally :which-key "Split window horizontally")
  "w s" '(split-window-horizontally :which-key "Split window horizontally")
  "w v" '(split-window-vertically :which-key "Split window vertically")
  )

; Navigation
(define-key evil-normal-state-map (kbd "J") 'next-lines)
(define-key evil-normal-state-map (kbd "K") 'previous-lines)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; My small helpers
(defun open-emacs-config ()
  (interactive)
  (find-file "~/.emacs"))

(defun open-notes-txt ()
  (interactive)
  (find-file "~/work/notes/notes.txt"))

(defun open-dired ()
  (interactive)
  (dired "~/work/"))

(defun previous-lines ()
  (interactive)
  (evil-previous-line 10))

(defun next-lines ()
  (interactive)
  (evil-next-line 10))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(gcmh which-key use-package evil-collection)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
