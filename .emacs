;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(package-selected-packages
   (quote
    (rainbow-mode matrix-client jira-markup-mode xml-rpc jira slack exwm symon popup-kill-ring guide-key neotree ido-vertical-mode minimap multiple-cursors ace-jump-mode darkroom chess magit sx omnisharp main-line smooth-scrolling))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Hand Written

;; Smart Tab Completion
(setq tab-always-indent 'complete)
(add-to-list 'completion-styles 'initials t)
;; end smart tab

;;  Adding package archives
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
;;  Package end

;;  Configuring Fonts
(add-to-list 'default-frame-alist '(font . FONT ))
(set-face-attribute 'default t :font "Terminus")
;;  Fonts end

;;  Configuring mainline
(require 'main-line)
(setq main-line-separator-style 'arrow14)
;;  Mainline end.

;;  Ace-jump-mode settings
(add-to-list 'load-path "which-folder-ace-jump-mode-file-in/")
(require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
;;  Ace-jump-mode end

;; Evil-Mode
(require 'evil)
(evil-mode 1)
(setq evil-emacs-state-cursor '("red" box))
(setq evil-normal-state-cursor '("green" box))
(setq evil-visual-state-cursor '("orange" box))
(setq evil-insert-state-cursor '("red" bar))
(setq evil-replace-state-cursor '("red" bar))
(setq evil-operator-state-cursor '("red" hollow))
;; Evil-Mode end.

;;  Multi-cursor-mode settings
(require 'multiple-cursors)
(global-set-key (kbd "C-c C-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
;;  multi-cursor-mode end

;;  Standard feature killing
(set-default 'truncate-lines t) ;;Truncate
(toggle-scroll-bar -1) ;;Scroll Off
(menu-bar-mode -1) ;;Menu Off
(tool-bar-mode -1) ;;Toolbar Off
(setq inhibit-startup-screen t) ;;Splash screen off
(global-linum-mode t)
(column-number-mode t)
 
;;  Killing end

;;  Custom Bindings and Functions
(global-set-key
 (kbd "C-| C-|")
 (lambda ()
   (interactive)
   (insert "~/C:/Source/HIS/Main/Code/")))
;;  Binds and Functions end.

;; Hand Writing end.
