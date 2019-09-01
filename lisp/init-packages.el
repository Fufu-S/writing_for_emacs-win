 (when (>= emacs-major-version 24)
     (require 'package)
     (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
		      ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; 注意 elpa.emacs-china.org 是 Emacs China 中文社区在国内搭建的一个 ELPA 镜像

 ;; cl - Common Lisp Extension
 (require 'cl)

 ;; Add Packages
 (defvar yongo/packages '(
		;; --- Auto-completion ---
		company
		;; --- Better Editor ---
		hungry-delete
		swiper
		counsel
		smartparens
		;; --- Major Mode ---
		js2-mode
		;; --- Minor Mode ---
		nodejs-repl
		exec-path-from-shell
		;; --- Themes ---
		monokai-theme
		;; solarized-theme
		popwin
		) "Default packages")

(setq package-selected-packages yongo/packages)


 (defun yongo/packages-installed-p ()
     (loop for pkg in yongo/packages
	   when (not (package-installed-p pkg)) do (return nil)
	   finally (return t)))

 (unless (yongo/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg yongo/packages)
       (when (not (package-installed-p pkg))
	 (package-install pkg))))
(require 'hungry-delete)
(global-hungry-delete-mode)

;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)



(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

(global-company-mode 1)

(load-theme 'monokai 1)

(require 'popwin)
(popwin-mode t)

(provide 'init-packages)
