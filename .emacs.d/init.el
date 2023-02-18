;; Turn off menu bar, tool bar, and scroll bar.
(if (fboundp 'menu-bar-mode)   (menu-bar-mode   -1))
(if (fboundp 'tool-bar-mode)   (tool-bar-mode   -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Turn off the splash screen.
(setq inhibit-startup-message t)

;; Hide welcome screen
(setq inhibit-startup-message t)

(load-theme 'tsdh-dark)
