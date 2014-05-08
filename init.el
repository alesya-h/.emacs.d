(add-to-list 'load-path "~/.emacs.d/plugins" t)
(require 'package)
(setcdr (last package-archives)
 '(("marmalade2" . "http://marmalade-repo.org/packages/")
   ("melpa2"     . "http://melpa.milkbox.net/packages/")))
(package-initialize)

;; (powerline-default-theme)
(setq sml/theme 'dark)
(require 'smart-mode-line)
(sml/setup)

(put 'narrow-to-page 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)
(setq warning-suppress-types nil)

(dolist
    (pkg '(
           ac-nrepl
           ag
           auctex
           auto-complete
           base16-theme
           cider
           cider-tracing
           clj-refactor
           clojure-mode
           clojure-project-mode
           clojure-snippets
           clojure-test-mode
           clojure-cheatsheet
           clojurescript-mode
           coffee-mode
           emmet-mode
           evil
           evil-args
           evil-exchange
           evil-indent-textobject
           evil-leader
           evil-nerd-commenter
           evil-numbers
           evil-paredit
           fill-column-indicator
           flymake
           flymake-coffee
           flymake-css
           flymake-cursor
           flymake-jshint
           flymake-json
           flymake-less
           flymake-ruby
           flymake-sass
           flymake-shell
           flymake-yaml
           fold-dwim
           haml-mode
           helm
           helm-ag
           helm-git-grep
           helm-google
           helm-ls-git
           helm-mode-manager
           helm-package
           helm-rails
           helm-rb
           helm-rubygems-local
           helm-themes
           impatient-mode ;; http://localhost:8080/imp/
           inf-ruby
           js2-mode
           key-chord
           lorem-ipsum
           lua-mode
           magit
           markdown-mode
           molokai-theme
           monokai-theme
           paredit
           popup
           quack
           rainbow-blocks
           rainbow-delimiters
           rainbow-mode
           rinari
           robe
           robe
           rspec-mode
           ruby-compilation
           ruby-electric
           ruby-hash-syntax
           sass-mode
           scss-mode
           skewer-mode
           slime
           smart-mode-line
           tuareg
           undo-tree
           web-mode
           yaml-mode
           yari
           yasnippet
           zenburn-theme
           ))
  (unless (package-installed-p pkg)
    (package-install pkg)))

(require 'helm-match-plugin)
(require 'highlight-focus)

(global-set-key (kbd "s-+") 'evil-numbers/inc-at-pt)
(global-set-key (kbd "s--") 'evil-numbers/dec-at-pt)
(global-set-key (kbd "<f5>") 'recentf-open-files)
(global-set-key (kbd "<f6>") 'gpicker-set-root-and-find-file)
(global-set-key (kbd "C-<f6>") 'gpicker-visit-project-ask-type)
(global-set-key (kbd "<f7>") 'gpicker-imenu)
(global-set-key (kbd "<f8>") 'gpicker-goto-tag)
(global-set-key (kbd "<f9>") 'supermegadoc-ri)
(global-set-key (kbd "M-;") 'comment-dwim-line)
(global-set-key (kbd "M-<tab>") 'switch-to-previous-buffer)
(global-set-key (kbd "<home>") 'smart-beginning-of-line)
(global-set-key (kbd "C-a") 'smart-beginning-of-line)
(global-set-key (kbd "C-<SPC>") 'fold-dwim-toggle)
(global-set-key (kbd "C-S-<SPC>") 'fold-dwim-toggle-selective-display)
(global-set-key (kbd "C-c m") 'toggle-menu-bar-mode-from-frame)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-<left>") 'windmove-left)
(global-set-key (kbd "C-<right>") 'windmove-right)
(global-set-key (kbd "C-<up>") 'windmove-up)
(global-set-key (kbd "C-<down>") 'windmove-down)
(require 'clojure-mode)
(define-key clojure-mode-map (kbd "C-<return>") 'cider-pprint-eval-last-sexp)

(global-evil-leader-mode)
(evil-leader/set-key "b" 'magit-blame-mode)
(evil-leader/set-key "n" 'linum-mode)
(evil-leader/set-key ".r" 'robe-jump)
(evil-leader/set-key ".t" 'find-tag)
(evil-leader/set-key "w" 'delete-trailing-whitespace)
(evil-leader/set-key "tb" 'ruby-toggle-block)
(evil-leader/set-key "th" 'ruby-toggle-hash-syntax)
(evil-leader/set-key "d" 'toggle-window-dedicated)
(evil-leader/set-key "r" 'rspec-verify-single)
(evil-leader/set-key "f" 'ag-project)

;; UI stuff goes here

(require 'fold-dwim)
(require 'uniquify)  ; add partial path to buffer name when identical filenames
(fset 'yes-or-no-p 'y-or-n-p)
(require 'icomplete)
(require 'icomplete+)
(icomplete-mode 99)

(evil-ex-define-cmd "Rfile" 'rinari-find-file-in-project)
(evil-ex-define-cmd "Rcontroller" 'rinari-find-controller)
(evil-ex-define-cmd "Rmodel" 'rinari-find-model)
(evil-ex-define-cmd "Rview" 'rinari-find-view)
(evil-ex-define-cmd "Rspec" 'rinari-find-rspec)
(evil-ex-define-cmd "Rhelper" 'rinari-find-helper)
(evil-ex-define-cmd "Rmailer" 'rinari-find-mailer)
(evil-ex-define-cmd "Rmigration" 'rinari-find-migration)
(evil-ex-define-cmd "Rstylesheet" 'rinari-find-stylesheet)
(evil-ex-define-cmd "Rsass" 'rinari-find-sass)
(evil-ex-define-cmd "Rjavascript" 'rinari-find-javascript)
(evil-ex-define-cmd "Rfeature" 'rinari-find-festures)
(evil-ex-define-cmd "Rserver" 'rinari-web-server-restart)


(defun my-send-to-nrepl ()
  (interactive)
  (let ((p (point)))
    (cider-eval-last-sexp 't)
    (goto-char p)
    (insert " ;;=> ")))

(defun my-send-to-nrepl2 ()
  (interactive)
  (let ((p (point)))
    (cider-eval-last-sexp 't)
    (goto-char p)
    (insert "\n;;=> ")))

(defun my-send-to-nrepl3 ()
  (interactive)
  (let* ((s (cider-last-sexp))
         (data (cider-eval-sync s))
         (v (plist-get data :value))
         (e (plist-get data :stderr)))
    (popup-tip (format "%s" (or e v)) :truncate 't)))

;; Toggle window dedication
(defun toggle-window-dedicated ()
  "Toggle whether the current active window is dedicated or not"
  (interactive)
  (message
   (if (let (window (get-buffer-window (current-buffer)))
         (set-window-dedicated-p window
                                 (not (window-dedicated-p window))))
       "Window '%s' is dedicated"
     "Window '%s' is normal")
   (current-buffer)))

;; gpicker and supermegadoc
(require 'gpicker)
(add-to-list 'load-path "~/.emacs.d/plugins/supermegadoc")
(require 'supermegadoc)
(setq *supermegadoc-browse-url-function* 'browse-url)
(setq *gpicker-project-dir* "/home/me/p/my/clj-workspace")
(defun gpicker-visit-project-ask-type ()
  (interactive)
  (call-interactively 'gpicker-visit-project)
  (call-interactively 'gpicker-set-project-type))

(defun gpicker-set-root-and-find-file ()
  (interactive)
  (unless *gpicker-project-dir*
    (gpicker-visit-project-ask-type))
  (gpicker-find-file))

(defun smart-beginning-of-line ()
  "Move point to first non-whitespace character or beginning-of-line.

Move point to the first non-whitespace character on this line.
If point was already at that position, move point to beginning of line."
  (interactive)
  (let ((oldpos (point)))
    (back-to-indentation)
    (and (= oldpos (point))
         (beginning-of-line))))

(defun comment-dwim-line (&optional arg)
  "Replacement for the comment-dwim command.
  If no region is selected and current line is not blank and we are
  not at the end of the line,then comment current line.
  Replaces default behaviour of comment-dwim, when it inserts comment at the end of the line."
  (interactive "*P")
  (comment-normalize-vars)
  (if (and (not (region-active-p))
           (not (looking-at "[ \t]*$")))
      (comment-or-uncomment-region (line-beginning-position)
                                   (line-end-position))
    (comment-dwim arg)))


(defun switch-to-previous-buffer ()
  "Switch to previously open buffer.
Repeated invocations toggle between the two most recently open buffers."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

;; ;; auto complete
(require 'auto-complete-config)
(ac-config-default)

(require 'ac-nrepl)
(add-hook 'cider-repl-mode-hook 'ac-nrepl-setup)
(add-hook 'cider-mode-hook 'ac-nrepl-setup)
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'cider-repl-mode))

(add-hook 'ruby-mode-hook
          (lambda ()
            (make-local-variable 'ac-ignores)
            (add-to-list 'ac-ignores "end")))

;; asy-mode, lasy-mode,
(add-to-list 'load-path "/usr/local/texlive/2010/texmf/asymptote/")
(autoload 'asy-mode "asy-mode.el" "Asymptote major mode." t)
(autoload 'lasy-mode "asy-mode.el" "hybrid Asymptote/Latex major mode." t)
(autoload 'asy-insinuate-latex "asy-mode.el" "Asymptote insinuate LaTeX." t)
(add-to-list 'auto-mode-alist '("\\.asy$" . asy-mode))

;; tex-mode
(add-hook 'tex-mode-hook 'auto-fill-mode)

;; ruby-mode
(add-to-list 'auto-mode-alist '("Capfile"      . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile"      . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile.lock" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile"     . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$"     . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$"       . ruby-mode))

(eval-after-load 'rspec-mode '(rspec-install-snippets))

(require 'align)
(add-to-list
 'align-rules-list
 '(symbol-value-alignment
   (regexp . "\\w+:\\(\\s-*\\)")
   (group . 1)
   (modes . '(ruby-mode coffee-mode yaml-mode javascript-mode))
   (repeat . nil)))

(defun display-code-line-counts (ov)
  (when (eq 'code (overlay-get ov 'hs))
    (overlay-put ov 'face 'font-lock-comment-face)
    (overlay-put ov 'display
                 (format " ... (%d lines) ... "
                         (count-lines (overlay-start ov)
                                      (overlay-end ov))))))

(eval-after-load "hideshow"
  (unless 'hs-set-up-overlay
    (setq hs-set-up-overlay 'display-code-line-counts)))

(add-hook 'hs-minor-mode-hook
          (lambda ()
            (unless hs-set-up-overlay
              (setq hs-set-up-overlay 'display-code-line-counts))))

(defun ruby-hs-minor-mode (&optional arg)
  (interactive)
  (require 'hideshow)
  (unless (assoc 'ruby-mode hs-special-modes-alist)
    (setq
     hs-special-modes-alist
     (cons (list 'ruby-mode
                 "\\(def\\|do\\|{\\)"
                 "\\(end\\|end\\|}\\)"
                 "#"
                 (lambda (&rest args) (ruby-end-of-block))
                 ;; (lambda (&rest args) (ruby-beginning-of-defun))
                 )
           hs-special-modes-alist)))
  (hs-minor-mode arg))

(add-hook 'ruby-mode-hook 'ruby-hs-minor-mode)
(add-hook 'lisp-mode-hook 'hs-minor-mode)
(put 'narrow-to-region 'disabled nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-delay 0.2)
 '(ag-highlight-search t)
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(ansi-term-color-vector [unspecified "#1F1611" "#660000" "#144212" "#EFC232" "#5798AE" "#BE73FD" "#93C1BC" "#E6E1DC"] t)
 '(c-basic-offset 4)
 '(c-default-style (quote ((c-mode . "k&r") (java-mode . "java") (awk-mode . "awk") (other . "gnu"))))
 '(cider-popup-stacktraces nil)
 '(cider-repl-use-pretty-printing t)
 '(compilation-message-face (quote default))
 '(custom-enabled-themes (quote (base16-chalk)))
 '(custom-safe-themes t)
 '(default-input-method "russian-computer")
 '(evil-leader/leader "l")
 '(evil-mode t)
 '(evil-search-module (quote evil-search))
 '(fci-rule-character-color "#452E2E")
 '(fci-rule-color "#383838")
 '(fci-rule-column 100)
 '(foreground-color "#839496")
 '(frame-brackground-mode (quote dark))
 '(fringe-mode 6 nil (fringe))
 '(global-auto-complete-mode t)
 '(global-auto-revert-mode t)
 '(global-font-lock-mode t)
 '(global-magit-wip-save-mode t)
 '(global-rainbow-delimiters-mode t)
 '(global-rinari-mode t)
 '(global-surround-mode t)
 '(global-whitespace-mode t)
 '(helm-google-search-function (quote helm-google-api-search))
 '(helm-match-plugin-mode t nil (helm-match-plugin))
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-tail-colors (quote (("#073642" . 0) ("#546E00" . 20) ("#00736F" . 30) ("#00629D" . 50) ("#7B6000" . 60) ("#8B2C02" . 70) ("#93115C" . 85) ("#073642" . 100))))
 '(history-length 1000)
 '(ido-enable-flex-matching t)
 '(ido-mode (quote buffer) nil (ido))
 '(indent-tabs-mode nil)
 '(inferior-js-program-command "/usr/bin/js")
 '(inferior-lisp-program "clisp -ansi")
 '(inhibit-startup-screen t)
 '(iswitchb-mode t)
 '(latex-run-command "pdflatex")
 '(magit-wip-mode t)
 '(menu-bar-mode nil)
 '(mouse-drag-copy-region t)
 '(mouse-yank-at-point t)
 '(nrepl-hide-special-buffers t)
 '(quack-global-menu-p nil)
 '(quack-pretty-lambda-p t)
 '(recentf-mode t)
 '(rspec-use-rake-when-possible nil)
 '(ruby-deep-indent-paren nil)
 '(save-place-file "~/.emacs.d/saved-places")
 '(savehist-mode t nil (savehist))
 '(scroll-bar-mode nil)
 '(select-active-regions nil)
 '(show-paren-mode t)
 '(slime-net-coding-system (quote utf-8-unix))
 '(solarized-termcolors 256)
 '(speedbar-indentation-width 2)
 '(speedbar-show-unknown-files t)
 '(speedbar-supported-extension-expressions (quote ("\\.rb" ".org" ".[ch]\\(\\+\\+\\|pp\\|c\\|h\\|xx\\)?" ".tex\\(i\\(nfo\\)?\\)?" ".el" ".emacs" ".l" ".lsp" ".p" ".java" ".js" ".f\\(90\\|77\\|or\\)?" ".ada" ".p[lm]" ".tcl" ".m" ".scm" ".pm" ".py" ".g" ".s?html" ".ma?k" "[Mm]akefile\\(\\.in\\)?" ".")))
 '(split-width-threshold 100500)
 '(syslog-debug-face (quote ((t :background unspecified :foreground "#2aa198" :weight bold))))
 '(syslog-error-face (quote ((t :background unspecified :foreground "#dc322f" :weight bold))))
 '(syslog-hour-face (quote ((t :background unspecified :foreground "#859900"))))
 '(syslog-info-face (quote ((t :background unspecified :foreground "#268bd2" :weight bold))))
 '(syslog-ip-face (quote ((t :background unspecified :foreground "#b58900"))))
 '(syslog-su-face (quote ((t :background unspecified :foreground "#d33682"))))
 '(syslog-warn-face (quote ((t :background unspecified :foreground "#cb4b16" :weight bold))))
 '(tab-width 2)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify))
 '(vc-annotate-background "#d4d4d4")
 '(vc-annotate-color-map (quote ((20 . "#437c7c") (40 . "#336c6c") (60 . "#205070") (80 . "#2f4070") (100 . "#1f3060") (120 . "#0f2050") (140 . "#a080a0") (160 . "#806080") (180 . "#704d70") (200 . "#603a60") (220 . "#502750") (240 . "#401440") (260 . "#6c1f1c") (280 . "#935f5c") (300 . "#834744") (320 . "#732f2c") (340 . "#6b400c") (360 . "#23733c"))))
 '(vc-annotate-very-old-color "#23733c")
 '(weechat-color-list (quote (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(whitespace-line-column 100)
 '(whitespace-style (quote (face tabs trailing lines space-before-tab empty space-after-tab tab-mark)))
 '(x-select-enable-clipboard nil)
 '(x-select-enable-primary t)
 '(yas-global-mode t nil (yasnippet)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
