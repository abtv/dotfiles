(setq frame-title-format "%b %f")

(add-to-list 'initial-frame-alist '(width . 120))
(add-to-list 'initial-frame-alist '(height . 40))
(setq doom-theme 'doom-zenburn) ; tango doom-zenburn doom-acario-light
(setq doom-font (font-spec :family "JetBrains Mono" :size 15 ))
(setq display-line-numbers-type nil)
(setq confirm-kill-emacs nil)

(setq org-directory "~/org/")
(setq org-ellipsis "▼")
(require 'org-download)
(add-hook 'org-mode-hook 'org-download-enable)
(setq-default org-download-heading-lvl nil)
(setq-default org-download-image-dir "~/org/images")
(setq org-image-actual-width 1200)
(global-set-key (kbd "s-.") 'org-narrow-to-subtree)
(global-set-key (kbd "s-,") 'widen)

(require 'recentf)
(add-to-list 'recentf-exclude
             (recentf-expand-file-name "~/.config/emacs/.local/etc/workspaces/autosave"))

(evil-global-set-key 'normal "J" 'evil-scroll-down)
(evil-global-set-key 'normal "K" 'evil-scroll-up)

(projectile-clear-known-projects)
(projectile-add-known-project "~/org")

(add-hook 'window-setup-hook (lambda () (find-file "~/org/main/main.org")))
