;;Load paths
(add-to-list 'load-path "~/.emacs.d/require/")

(setq inhibit-startup-message t)

;;Display settings
(scroll-bar-mode -1)     ;Disable visible scrollbar
(tool-bar-mode -1)       ;Disable tooltip bar
(tooltip-mode -1)        ;Disable tooltips

;;text display settings
(set-fringe-mode 10)     ;Give breathing room
(line-number-mode t)    ;Display line num
(set-fringe-mode -1)     ;Give breathing room
(global-display-line-numbers-mode 1)    ;Display line num

;;hud settings
(menu-bar-mode -1)       ;Disable menu bar
(column-number-mode t)   ;Display colum
(global-hl-line-mode t)  ;Display line highlight


;;scroll settings
(setq mouse-wheel-scroll-amount '(2 ((shift) . 1))   ;scroll 2 lines
      mouse-wheel-progressive-speed nil              ;enable scroll acceleration
      mouse-wheel-follow-mouse 't                    ;scroll on cursor
      scroll-step 1)                                 ;keyboard roll 1

;;justification settings
(global-visual-line-mode t)

;;sound settings
(setq visible-bell t)    ;Visible bell to disable annoying beeps

;;Selection mode
(delete-selection-mode t);Selection delete

;;backups settings
(setq backup-directory-alist '(("." . "~/.saves")))

;;Load theme
(load-theme 'dracula t)


;;packages
;;Init packages sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;;Init non-linux platforms
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package command-log-mode)

;;init exwm
;(require 'exwm)
;(require 'exwm-config)
;(exwm-config-default)




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(exwm ivy command-log-mode use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;Discord rich presence
(require 'elcord)
(elcord-mode)
