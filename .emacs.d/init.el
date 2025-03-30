;; Libraries load path
;; Libraries load path
(add-to-list 'load-path
             (expand-file-name "lisp" user-emacs-directory))

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

;; Backup
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory "backups/")))
      make-backup-files t     ; backup of a file the first time it is saved.
      backup-by-copying t     ; don't clobber symlinks
      vc-make-backup-files t  ; backup version controlled files too as we don't commit on every save
      version-control t       ; version numbers for backup files
      delete-old-versions t   ; delete excess backup files silently
      kept-old-versions 6     ; oldest versions to keep when a new numbered
                              ;  backup is made (default: 2)
      kept-new-versions 9     ; newest versions to keep when a new numbered
                              ;  backup is made (default: 2)
      auto-save-default t     ; auto-save every buffer that visits a file
      auto-save-timeout 20    ; number of seconds idle time before auto-save
                              ;  (default: 30)
      auto-save-interval 200) ; number of keystrokes between auto-saves
                              ;  (default: 300)

;; y/n for  answering yes/no questions
(fset 'yes-or-no-p 'y-or-n-p)

;; Remember the last place visited in a file
(save-place-mode 1)

;; Automatically revert buffers for changed files if they don't have unsaved changes
(global-auto-revert-mode 1)
