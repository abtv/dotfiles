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
    ))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(dolist (package packages)
  (unless (package-installed-p package)
    (package-install package)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; CONFIG PACKAGES
(setq evil-want-integration t)
(setq evil-want-keybinding nil)
(setq evil-vsplit-window-right t)
(setq evil-split-window-below t)
(evil-mode)
(evil-collection-init)
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

; M-x
(define-key evil-normal-state-map (kbd "SPC x") 'execute-extended-command)

; Dired
(setq vc-follow-symlinks t)
(global-set-key (kbd "s-o") (lambda () (interactive) (dired "~/work/")))

; Files
(define-key evil-normal-state-map (kbd "SPC e") (lambda () (interactive) (find-file "~/.emacs")))
(define-key evil-normal-state-map (kbd "SPC n") (lambda () (interactive) (find-file "~/work/notes/notes.txt")))

; UI
(setq default-frame-alist
       '((height . 60)
         (width . 180)
         (left . 350)
         (top . 200)
         (vertical-scroll-bars . nil)
         (horizontal-scroll-bars . nil)
         (tool-bar-lines . 0)))
(blink-cursor-mode -1)
(setq ring-bell-function 'ignore)
(line-number-mode   t)
(global-linum-mode  t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Buffers
(global-set-key (kbd "s-s") 'save-buffer)
(global-set-key (kbd "s-w") 'kill-current-buffer)
(global-set-key (kbd "s-{") 'previous-buffer)
(global-set-key (kbd "s-}") 'next-buffer)

; Windows
(define-key evil-normal-state-map (kbd "SPC w w") 'next-window-any-frame)
(define-key evil-normal-state-map (kbd "SPC w m") 'delete-other-windows)
(define-key evil-normal-state-map (kbd "SPC w c") 'delete-window)
(define-key evil-normal-state-map (kbd "SPC w h") 'split-window-horizontally)
(define-key evil-normal-state-map (kbd "SPC w s") 'split-window-horizontally)
(define-key evil-normal-state-map (kbd "SPC w v") 'split-window-vertically)

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
