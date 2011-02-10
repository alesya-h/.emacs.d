(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(TeX-engine (quote xetex))
 '(default-input-method "russian-computer")
 '(ecb-options-version "2.40")
 '(ecb-source-path (quote ("~/jobandtalent/")))
 '(ecb-tip-of-the-day nil)
 '(global-font-lock-mode t)
 '(ido-enable-flex-matching t)
 '(inhibit-startup-screen t)
 '(quack-default-program "racket")
 '(quack-global-menu-p nil)
 '(quack-pretty-lambda-p t)
 '(scroll-bar-mode (quote right))
 '(tool-bar-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; UI stuff goes here
(setq-default tab-width 2
              indent-tabs-mode nil)


(defun font-existsp (font)
    (if (null (x-list-fonts font))
        nil t))

;; set default font
(cond ((font-existsp "Anka/Coder_Narrow")
       (set-face-attribute 'default nil :font "Anka/Coder_Narrow"))
      ((font-existsp "Anka/Coder Narrow")
       (set-face-attribute 'default nil :font "Anka/Coder Narrow")))
(set-face-attribute 'default nil :height 140) ;; pt*10

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

;; window-numbering
(require 'window-numbering)
(window-numbering-mode 1)

;; show/hide menubar
(global-set-key "f12" 'toggle-menu-bar-mode-from-frame)

;; resize windows with C-M-<arrows>
(require 'winresize)

;; git support
(add-to-list 'load-path "~/.emacs.d/plugins/git")
  (require 'git)
  (require 'git-blame)

;; Collection of Emacs Development Environment Tools
(load-file "~/.emacs.d/plugins/cedet-1.0/common/cedet.el")
(global-ede-mode 1)
(semantic-load-enable-code-helpers)
(global-srecode-minor-mode 1)

;; mode-compile
(autoload 'mode-compile "mode-compile"
  "Command to compile current buffer file based on the major mode" t)
(global-set-key "\C-cc" 'mode-compile)
(autoload 'mode-compile-kill "mode-compile"
  "Command to kill a compilation launched by `mode-compile'" t)
(global-set-key "\C-ck" 'mode-compile-kill)

;; auto complete
(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete")
(setq ac-dictionary-directories '())
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/dict")
    (require 'auto-complete-config)
    (ac-config-default)

;; textmate.el
(add-to-list 'load-path "~/.emacs.d/plugins/textmate.el")
(require 'textmate)
(textmate-mode)

;; rvm.el
(require 'rvm)
(rvm-use-default)

;; erlang-mode
(add-to-list 'load-path "~/.emacs.d/plugins/erlang")
(setq erlang-root-dir "/usr/local/Cellar/erlang/R14B01/")
(add-to-list 'exec-path "/usr/local/Cellar/erlang/R14B01/bin")
(require 'erlang-start)

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
;; (add-to-list 'load-path "~/.emacs.d/plugins/auctex-11.86")
;; (add-to-list 'load-path "~/.emacs.d/plugins/auctex-11.86/preview")
;; (load "auctex.el" nil t t)
;; (load "preview-latex.el" nil t t)
;; (add-hook 'TeX-mode-hook
;;  '(lambda ()
;;    (local-set-key "\\" 'TeX-electric-macro)
;;    (auto-fill-mode)
;;    ))

;; quack (racket/scheme for emacs)
(require 'quack)

;; asy-mode, lasy-mode, 
(add-to-list 'load-path "/usr/local/texlive/2010/texmf/asymptote/")
(autoload 'asy-mode "asy-mode.el" "Asymptote major mode." t)
(autoload 'lasy-mode "asy-mode.el" "hybrid Asymptote/Latex major mode." t)
(autoload 'asy-insinuate-latex "asy-mode.el" "Asymptote insinuate LaTeX." t)
(add-to-list 'auto-mode-alist '("\\.asy$" . asy-mode))

;; zencoding
(require 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode) ;; Auto-start on any markup modes

;; ruby-mode
(add-to-list 'load-path "~/.emacs.d/plugins/ruby")
  (autoload 'ruby-mode "ruby-mode" "Major mode for Ruby files" t)
  (add-to-list 'auto-mode-alist '("Capfile" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
  (add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))
;; inferior ruby mode
(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby process")
  (autoload 'inf-ruby-keys "inf-ruby"
    "Set local key defs for inf-ruby in ruby-mode")
  (add-hook 'ruby-mode-hook
	    '(lambda ()
	       (inf-ruby-keys)
	       ))
;; ruby electric
;; (require 'ruby-electric)
;; ruby C/C++ style
(require 'ruby-style)
(add-hook 'c-mode-hook 'ruby-style-c-mode)
(add-hook 'c++-mode-hook 'ruby-style-c-mode)

(add-hook 'ruby-mode-hook
          (lambda ()
            (add-to-list 'ac-sources 'ac-source-rsense-method)
            (add-to-list 'ac-sources 'ac-source-rsense-constant)))

;; rails-reloaded
(add-to-list 'load-path "~/.emacs.d/plugins/emacs-rails-reloaded")
(require 'rails-autoload)

;; Rinari
;;(add-to-list 'load-path "~/.emacs.d/plugins/rinari")
;;(require 'rinari)

;;; rhtml mode
(add-to-list 'load-path "~/.emacs.d/plugins/rhtml")
(require 'rhtml-mode)
;;(add-hook 'rhtml-mode-hook
;;          (lambda () (rinari-launch)))

;; rsense
(setq rsense-home (expand-file-name "~/.emacs.d/plugins/rsense"))
(add-to-list 'load-path (concat rsense-home "/etc"))
(require 'rsense)

;; YARI
(add-to-list 'load-path "~/.emacs.d/plugins/yari.el")
(require 'yari)

;; yasnippet
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet-0.6.1c")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugins/yasnippet-0.6.1c/snippets")

;; Load Emacs Code Browser
(add-to-list 'load-path "~/.emacs.d/plugins/ecb-2.40")
(require 'ecb)

;; twittering mode
(add-to-list 'load-path "~/.emacs.d/plugins/twittering-mode")
(require 'twittering-mode)

;; color-theme
(add-to-list 'load-path "~/.emacs.d/plugins/color-theme-6.6.0")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-gtk-ide)))

;; full screen toggle using command+[RET]
(defun toggle-fullscreen () 
  (interactive) 
  (set-frame-parameter nil 'fullscreen (if (frame-parameter nil 'fullscreen) 
                                           nil 
                                           'fullboth)))
(global-set-key [(f11)] 'toggle-fullscreen)

;; Start ECB
(ecb-activate)

;; emacs server
(server-start)
