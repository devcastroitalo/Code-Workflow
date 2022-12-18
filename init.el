;; Basics settings
(setq inhibit-startup-message t)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode -1)

(global-display-line-numbers-mode)
(setq display-line-numbers 'relative)
(column-number-mode t)
(global-hl-line-mode t)           

(setq visible-bell t)

(electric-layout-mode 1)
(electric-pair-mode 1)

(global-unset-key (kbd "C-z"))

(delete-selection-mode t)

(setq-default indent-tabs-mode t)
(setq-default tab-width 4)

(setq mouse-wheel-scroll-amount '(2 ((shift) . 1))
      mouse-wheel-progressive-speed nil
      mouse-wheel-follow-mouse 't
      scroll-step 1)

(global-visual-line-mode t)

(set-face-attribute 'default nil :font "Ubuntu Mono" :height 130)

(setq-default cursor-type 'box)

(setq backup-directory-alist `(("." . "~/.saves")))

(add-to-list 'default-frame-alist '(height . 50))
(add-to-list 'default-frame-alist '(width . 150))

(require 'ido)
(ido-mode t)

(load-theme 'gruber-darker t)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package try
  :ensure t)

(use-package auto-complete
  :ensure t
  :init
  (progn
	(ac-config-default)
	(global-auto-complete-mode t)))

;; MELPA stuff
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("7923541211298e4fd1db76c388b1d2cb10f6a5c853c3da9b9c46a02b7f78c882" default))
 '(package-selected-packages
   '(smartparens gruber-darker-theme use-package try auto-complete)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
