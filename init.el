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
(load-theme 'moe-dark t)


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

;;init exwm
;(require 'exwm)
;(require 'exwm-config)
;(exwm-config-default)
 
;;Discord rich presence
;(require 'elcord)
;(elcord-mode)
