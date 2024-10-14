(setq frame-title-format "Notes")

(add-to-list 'initial-frame-alist '(width . 120))
(add-to-list 'initial-frame-alist '(height . 40))
(load-theme 'doom-homage-white t)
(setq doom-font (font-spec :family "JetBrains Mono" :size 15))
(setq display-line-numbers-type nil)
(setq confirm-kill-emacs nil)

(require 'recentf)
(add-to-list 'recentf-exclude
             (recentf-expand-file-name "~/.config/emacs/.local/etc/workspaces/autosave"))

(setq org-directory "~/org/")
(setq org-ellipsis "▼")
(require 'org-download)
(add-hook 'org-mode-hook 'org-download-enable)
(setq-default org-download-heading-lvl nil)
(setq-default org-download-image-dir "~/org/images")
(setq org-image-actual-width 1200)
(setq org-agenda-span 30)

;; Zoom in and zoom out for Org mode
(map! :after org :map org-mode-map "s-." 'org-narrow-to-subtree)
(map! :after org :map org-mode-map "s-," 'widen)

;; Setup J and K keys
(defun previous-lines ()
  (interactive)
  (evil-previous-line 10))
(defun next-lines ()
  (interactive)
  (evil-next-line 10))
(evil-global-set-key 'normal "J" 'next-lines)
(evil-global-set-key 'normal "K" 'previous-lines)

;; Global keys
(global-set-key (kbd "s-i") '+vterm/toggle)
(global-set-key (kbd "s-f") '+default/search-project)
(global-set-key (kbd "s-;") 'projectile-find-file)
(global-set-key (kbd "C-l") 'doom/toggle-line-numbers)
(map! :desc "Delete current buffer" :leader "d" 'kill-current-buffer)

;; Make vterm bigger
(after! vterm
  (set-popup-rule! "*doom:vterm-popup:main" :size 0.75 :vslot -4 :select t :quit nil :ttl 0 :side 'bottom))

;; Toggle big/small screen size (I use small mode to take notes during meetings and big mode for focused work)
(defvar centered-frame t)

(defun set-width (width)
  (set-frame-width (selected-frame) width))

(defun set-centered-frame ()
  (set-width 120)
  (if (<= (display-pixel-width) 1440)
      (set-frame-position (selected-frame) 200 50)
    (if (<= (display-pixel-width) 1728)
        (set-frame-position (selected-frame) 320 150)
      (if (<= (display-pixel-width) 1920)
          (set-frame-position (selected-frame) 400 180)
        (set-frame-position (selected-frame) 400 180) ;; update it later if I have a bigger screen
        ))))

(defun set-right-side-frame ()
  (set-width 50)
  (if (<= (display-pixel-width) 1440)
      (set-frame-position (selected-frame) 970 0)
    (if (<= (display-pixel-width) 1728)
        (set-frame-position (selected-frame) 1250 0)
      (if (<= (display-pixel-width) 1920)
          (set-frame-position (selected-frame) 1450 0)
        (set-frame-position (selected-frame) 1450 0) ;; update it later if I have a bigger screen
        ))))

(defun toggle-frame-size ()
  (interactive)
  (if (eq centered-frame 'nil)
      (set-centered-frame)
    (set-right-side-frame))
  (setq centered-frame (not centered-frame)))

(map! :desc "Toggle frame size" :leader "v" 'toggle-frame-size)
;; End of toggle big/small screen size

;; Open journal on startup
(add-hook 'window-setup-hook (lambda () (find-file "~/org/journal.org")))

(map! :desc "Quick commit" :leader "g s" (lambda () (interactive) (shell-command "git add .;git commit -a -m 'Update'")))

(set-centered-frame)
(set-background-color "#d0d0d0")
