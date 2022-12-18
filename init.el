;; Basics settings
(setq inhibit-startup-message t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode -1)
(global-display-line-numbers-mode)
(setq display-line-numbers 'relative)
(column-number-mode t)
;; (global-hl-line-mode t)           ; Line highlight
(setq visible-bell t)

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

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(add-to-list 'default-frame-alist '(height . 50))
(add-to-list 'default-frame-alist '(width . 150))
