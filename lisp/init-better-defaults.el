(global-auto-revert-mode t)

(global-linum-mode 1)


(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					  ;;signature
					  ("6yk" "yongo")
					  ;;Minecrft
					  ("6mc" "Minecrft")
					  ))


(setq make-backup-files nil)
(setq auto-save-default nil)

(recentf-mode 1)
(setq recentf-max-menu-item 10)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(delete-selection-mode 1)

(set-face-attribute 'default nil :height 160)

(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)



(setq hippie-expand-try-function-list '(try-expand-debbrev
					try-expand-debbrev-all-buffers
					try-expand-debbrev-from-kill
					try-complete-file-name-partially
					try-complete-file-name
					try-expand-all-abbrevs
					try-expand-list
					try-expand-line
					try-complete-lisp-symbol-partially
					try-complete-lisp-symbol))



(put 'dired-find-alternate-file 'disabled nil)
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)
(fset 'yes-or-no-p 'y-or-n-p)

(require 'dired-x)
(setq dired-dwin-target 1)

(setq initial-frame-alist (quote ((fullscreen . maximized))))

(setq ring-bell-function 'ignore)

(provide 'init-better-defaults)
