;; UI stuff goes here

;; disable splash screen
(setq inhibit-splash-screen t)

;; use gloabally selected fonts for comments, strings etc.
(global-font-lock-mode t)

;; set default font
;;(set-default-font "M+_2m-18")
(set-default-font "Anka/Coder_Narrow-18")

;; set width and height
(if (and window-system (window-system))
    (progn (set-frame-width (selected-frame) 164)
     (set-frame-height (selected-frame) 35)))

;; replace "yes-or-no" with "y-or-n"
(fset 'yes-or-no-p 'y-or-n-p)

;; autostart org-mode for .org files
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;; Plugins stuff goes here
(add-to-list 'load-path "~/.emacs.d/plugins")

;; ido
(require 'ido)
(ido-mode)

;; mode-compile
(autoload 'mode-compile "mode-compile"
  "Command to compile current buffer file based on the major mode" t)
(global-set-key "\C-cc" 'mode-compile)
(autoload 'mode-compile-kill "mode-compile"
  "Command to kill a compilation launched by `mode-compile'" t)
(global-set-key "\C-ck" 'mode-compile-kill)

;; yaml-mode
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))

;;markdown-mode
(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown" . markdown-mode))

;; acutex
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(add-hook 'TeX-mode-hook
 '(lambda ()
   (local-set-key "\\" 'TeX-electric-macro)
   (auto-fill-mode)
   ))

;; zencoding
(require 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode) ;; Auto-start on any markup modes

;; quack (racket/scheme for emacs)
(require 'quack)

;; window-numbering
(require 'window-numbering)
(window-numbering-mode 1)

;; resize windows with C-M-<arrows>
(require 'winresize)

;; twittering mode
(add-to-list 'load-path "~/.emacs.d/plugins/twittering-mode")
(require 'twittering-mode)

;; asy-mode, lasy-mode, 
(add-to-list 'load-path "/usr/local/texlive/2010/texmf/asymptote/")
(autoload 'asy-mode "asy-mode.el" "Asymptote major mode." t)
(autoload 'lasy-mode "asy-mode.el" "hybrid Asymptote/Latex major mode." t)
(autoload 'asy-insinuate-latex "asy-mode.el" "Asymptote insinuate LaTeX." t)
(add-to-list 'auto-mode-alist '("\\.asy$" . asy-mode))

;; yasnippet
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet-0.6.1c")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugins/yasnippet-0.6.1c/snippets")

;; ruby-mode
(add-to-list 'load-path "~/.rvm/src/ruby-1.9.2-p136/misc")
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(autoload 'ruby-mode "ruby-mode" "Major mode for editing Ruby code" t)
;; Русские буквы, специально для Хабрахабра
;; color-theme
(add-to-list 'load-path "~/.emacs.d/plugins/color-theme-6.6.0")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-hober)))

;; erlang-mode
(add-to-list 'load-path "/usr/local/Cellar/erlang/R14B/lib/erlang/lib/tools-2.6.6.1/emacs")
(setq erlang-root-dir "/usr/local/Cellar/erlang/R14B/")
(add-to-list 'exec-path "/usr/local/Cellar/erlang/R14B/bin")
(require 'erlang-start)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(TeX-engine (quote xetex))
 '(default-input-method "russian-computer")
 '(ido-enable-flex-matching t)
 '(quack-default-program "racket")
 '(quack-global-menu-p nil)
 '(quack-pretty-lambda-p t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
