(setq frame-title-format "%b %f")

(add-to-list 'initial-frame-alist '(width . 120))
(add-to-list 'initial-frame-alist '(height . 40))
(setq doom-theme 'doom-homage-white) ; tango doom-zenburn doom-acario-light
(setq doom-font (font-spec :family "JetBrains Mono" :size 15 ))
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

;; Zoom in and zoom out for Org mode
(map! :after org :map org-mode-map "s-." #'org-narrow-to-subtree)
(map! :after org :map org-mode-map "s-," #'widen)

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
(map! :leader "d" 'kill-current-buffer)

;; Make vterm bigger
(after! vterm
  (set-popup-rule! "*doom:vterm-popup:main" :size 0.75 :vslot -4 :select t :quit nil :ttl 0 :side 'bottom))

(add-hook 'window-setup-hook (lambda () (find-file "~/org/journal.org")))
