;; Basics settings
(setq inhibit-startup-message t)

(tool-bar-mode   -1)
(menu-bar-mode   -1)
(scroll-bar-mode -1)
(tooltip-mode    -1)

(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)
(column-number-mode t)

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

(setq-default cursor-type 'box)

(setq backup-directory-alist `(("." . "~/.saves")))

(add-to-list 'default-frame-alist '(height . 50))
(add-to-list 'default-frame-alist '(width . 150))

(require 'ido)
(ido-mode t)

;; Package settings
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
						 ("org"   . "https://orgmode.org/elpa/")
						 ("elpa"  . "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package auto-complete
  :ensure t
  :init
  (progn
	(ac-config-default)
	(global-auto-complete-mode t)))
