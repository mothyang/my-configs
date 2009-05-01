(setq load-path
      (cons "~/.emacs.d" load-path))
;; load cedet
(load-file "~/.emacs.d/cedet/common/cedet.el")

;; semantic
(semantic-load-enable-gaudy-code-helpers)

;; enable ede
(global-ede-mode 1)

;; speedbar as buffer
(require 'sr-speedbar)

;; etags-select
(require 'etags-select)
(global-set-key "\M-." 'etags-select-find-tag-at-point)
(global-set-key "\M-?" 'etags-select-find-tag)
(semantic-load-enable-all-exuberent-ctags-support)

;; yasnippet
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory "~/.emacs.d/snippets")

;; python stuff

(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)

(require 'pymacs)
(pymacs-load "ropemacs" "rope-")
(autoload 'python-mode "python-mode" "Python Mode." t)  
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))  
(add-to-list 'interpreter-mode-alist '("python" . python-mode))  
(require 'python-mode) 
(setq interpreter-mode-alist
      (cons '("python" . python-mode)
          interpreter-mode-alist))
(setq
 python-mode-hook
 '(lambda () (progn
               (set-variable 'py-indent-offset 4)
               (define-key py-mode-map (kbd "RET") 'newline-and-indent)  
               (set-variable 'py-smart-indentation t)
               (set-variable 'indent-tabs-mode nil) )))

;; cscope
(require 'xcscope)

(add-hook 'c-mode-common-hook
          (lambda ()
            (c-set-style "k&r")
            (setq c-basic-offset 4)))

;; Change bakcup behavior to save in a directory
(setq
 backup-by-copying t             
 backup-directory-alist
 '(("." . "~/.emacs_backups"))
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)

;; tab stuff
(setq default-tab-width 8)
(column-number-mode t)



;;; system generated configuations.
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(c-ignore-auto-fill (quote (string c c++ cpp code)))
 '(column-number-mode t)
 '(delete-key-deletes-forward t)
 '(font-lock-auto-fontify t)
 '(font-lock-maximum-decoration t)
 '(font-lock-mode t t (font-lock))
 '(indent-tabs-mode nil)
 '(scroll-bar-mode (quote right))
 '(semantic-python-dependency-system-include-path (quote ("/usr/lib/python/" "/usr/lib/python/site-packages")))
 '(show-paren-mode t))


;; color theme
(require 'color-theme)
(color-theme-initialize)
(color-theme-pok-wog)
