;;Load paths
(add-to-list 'load-path "~/.emacs.d/require/")

(setq inhibit-startup-message t)

(scroll-bar-mode -1)     ;Disable visible scrollbar
(tool-bar-mode -1)       ;Disable tooltip bar
(tooltip-mode -1)        ;Disable tooltips
(set-fringe-mode -1)     ;Give breathing room

(menu-bar-mode -1)       ;Disable menu bar

;;Set visible bell to disable annoying beeps
(setq visible-bell t)

(load-theme 'tango-dark)

;;ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)


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

(use-package ivy)





(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(ivy command-log-mode use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;Discord rich presence
(require 'elcord)
(elcord-mode)
