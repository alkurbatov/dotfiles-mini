;; Turn off menu bar, tool bar, and scroll bar.
(if (fboundp 'menu-bar-mode)   (menu-bar-mode   -1))
(if (fboundp 'tool-bar-mode)   (tool-bar-mode   -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Turn off the splash screen.
(setq inhibit-startup-message t)

;; Hide welcome screen
(setq inhibit-startup-message t)

;; Display line numbers in most modes
(add-hook 'conf-unix-mode-hook #'display-line-numbers-mode)
(add-hook 'prog-mode-hook #'display-line-numbers-mode)
(add-hook 'text-mode-hook #'display-line-numbers-mode)

(load-theme 'tsdh-dark)
