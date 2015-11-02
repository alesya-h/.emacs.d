(add-to-list 'load-path "~/.emacs.d/plugins" t)
(require 'package)
(setcdr (last package-archives)
 '(("marmalade" . "http://marmalade-repo.org/packages/")
   ("melpa"     . "http://melpa.org/packages/")))
(package-initialize)
(dolist
    (pkg '(ac-cider
           ag
           auctex
           auto-complete
           auto-dim-other-buffers
           base16-theme
           bubbleberry-theme
           cider
           clj-refactor
           clojure-mode
           clojure-snippets
           clojure-cheatsheet
           clojurescript-mode
           coffee-mode
           editorconfig
           elm-mode
           emmet-mode
           evil
           evil-args
           evil-exchange
           evil-indent-textobject
           evil-jumper
           evil-leader
           evil-matchit
           evil-nerd-commenter
           evil-numbers
           evil-paredit
           evil-surround
           evil-space
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
           fuzzy
           glsl-mode
           graphviz-dot-mode
           haml-mode
           haskell-mode
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
           lispy
           lua-mode
           magit
           markdown-mode
           material-theme
           maude-mode
           molokai-theme
           monokai-theme
           neotree
           osc
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
           slim-mode
           slime
           smart-mode-line
           tabbar
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

(defun random-elt (lst)
  (nth (random (length lst))
       lst))
(setq
 scratch-messages
 `(";; The best way to predict the future is to invent it. -Alan Kay"
   ";; A point of view is worth 80 IQ points. -Alan Kay"
   ";; Lisp isn't a language, it's a building material. -Alan Kay"
   ";; Simple things should be simple, complex things should be possible. -Alan Kay"
   ";; Measuring programming progress by lines of code is like measuring aircraft building progress by weight. -Bill Gates"
   ";; Controlling complexity is the essence of computer programming. -Brian Kernighan"
   ";; The unavoidable price of reliability is simplicity. -C.A.R. Hoare"
   ";; You're bound to be unhappy if you optimize everything. -Donald Knuth"
   ";; Simplicity is prerequisite for reliability. -Edsger W. Dijkstra"
   ";; Deleted code is debugged code. -Jeff Sickel"
   ";; The key to performance is elegance, not battalions of special cases. -Jon Bentley and Doug McIlroy"
   ";; First, solve the problem. Then, write the code. -John Johnson"
   ";; Simplicity is the ultimate sophistication. -Leonardo da Vinci"
   ";; Programming is not about typing... it's about thinking. -Rich Hickey"
   ";; Design is about pulling things apart. -Rich Hickey"
   ";; Programmers know the benefits of everything and the tradeoffs of nothing. -Rich Hickey"
   ";; Code never lies, comments sometimes do. -Ron Jeffries"
   ";; The true delight is in the finding out rather than in the knowing.  -Isaac Asimov"
   ";; Let the hacking commence!"
   ";; Hacks and glory await!"
   ";; Hack and be merry!"
   ";; Your hacking starts... NOW!"
   ";; May the Source be with you!"
   ";; Code long and prosper!"
   ";; Happy hacking!"
   ";; Your imagination is the only limit."
   ";; Fame is but a hack away!"
   ";; Scientifically-proven optimal words of hackerish encouragement."))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-delay 0.2)
 '(ag-highlight-search t)
 '(ag-reuse-buffers t)
 '(ag-reuse-window t)
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(ansi-term-color-vector
   [unspecified "#1F1611" "#660000" "#144212" "#EFC232" "#5798AE" "#BE73FD" "#93C1BC" "#E6E1DC"] t)
 '(auto-dim-other-buffers-mode t)
 '(c-basic-offset 4)
 '(c-default-style
   (quote
    ((c-mode . "k&r")
     (java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu"))))
 '(cider-repl-print-length 30)
 '(cider-repl-use-pretty-printing nil)
 '(cider-show-error-buffer nil)
 '(compilation-message-face (quote default))
 '(custom-enabled-themes (quote (base16-monokai-dark)))
 '(custom-safe-themes t)
 '(default-input-method "russian-computer")
 '(evil-jumper-mode t)
 '(evil-leader/leader "l")
 '(evil-mode t)
 '(evil-search-module (quote evil-search))
 '(evil-symbol-word-search t)
 '(face-font-family-alternatives
   (quote
    (("arial black" "arial" "DejaVu Sans")
     ("arial" "DejaVu Sans")
     ("courier" "Monospace")
     ("monaco" "Monospace")
     ("xiki" "verdana")
     ("verdana" "DejaVu Sans"))))
 '(fci-rule-character-color "#452E2E")
 '(fci-rule-color "#383838")
 '(fci-rule-column 100)
 '(font-lock-keywords-case-fold-search t t)
 '(foreground-color "#839496")
 '(frame-brackground-mode (quote dark))
 '(fringe-mode 6 nil (fringe))
 '(global-auto-complete-mode t)
 '(global-auto-revert-mode t)
 '(global-evil-matchit-mode t)
 '(global-evil-surround-mode t)
 '(global-font-lock-mode t nil (font-lock))
 '(global-magit-wip-save-mode t)
 '(global-rainbow-delimiters-mode t)
 '(global-rinari-mode t)
 '(global-surround-mode t)
 '(global-whitespace-mode t)
 '(haskell-mode-hook
   (quote
    (imenu-add-menubar-index turn-on-haskell-doc turn-on-haskell-indentation)))
 '(helm-google-search-function (quote helm-google-api-search))
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(history-length 1000)
 '(ido-enable-flex-matching t)
 '(ido-mode (quote buffer) nil (ido))
 '(indent-tabs-mode nil)
 '(inf-ruby-default-implementation "pry")
 '(inferior-js-program-command "/usr/bin/js")
 '(inferior-lisp-program "clisp -ansi" t)
 '(inhibit-startup-screen t)
 '(initial-scratch-message
   ";; Scientifically-proven optimal words of hackerish encouragement.
")
 '(latex-run-command "pdflatex")
 '(linum-format (quote dynamic))
 '(magit-last-seen-setup-instructions "1.4.0" t)
 '(magit-use-overlays nil)
 '(magit-wip-mode t)
 '(main-line-color1 "#29282E")
 '(main-line-color2 "#292A24")
 '(menu-bar-mode nil)
 '(mouse-drag-copy-region t)
 '(mouse-yank-at-point t)
 '(nrepl-hide-special-buffers t)
 '(powerline-color1 "#29282E")
 '(powerline-color2 "#292A24")
 '(quack-global-menu-p nil)
 '(quack-pretty-lambda-p t)
 '(recentf-mode t)
 '(rspec-use-rake-when-possible nil)
 '(ruby-deep-indent-paren nil)
 '(save-place-file "~/.emacs.d/saved-places")
 '(savehist-mode t nil (savehist))
 '(scroll-bar-mode nil)
 '(scroll-step 1)
 '(scss-compile-at-save nil)
 '(select-active-regions nil)
 '(show-paren-mode t)
 '(show-trailing-whitespace t)
 '(slime-net-coding-system (quote utf-8-unix))
 '(solarized-termcolors 256)
 '(speedbar-indentation-width 2)
 '(speedbar-show-unknown-files t)
 '(speedbar-supported-extension-expressions
   (quote
    ("\\.rb" ".org" ".[ch]\\(\\+\\+\\|pp\\|c\\|h\\|xx\\)?" ".tex\\(i\\(nfo\\)?\\)?" ".el" ".emacs" ".l" ".lsp" ".p" ".java" ".js" ".f\\(90\\|77\\|or\\)?" ".ada" ".p[lm]" ".tcl" ".m" ".scm" ".pm" ".py" ".g" ".s?html" ".ma?k" "[Mm]akefile\\(\\.in\\)?" ".")))
 '(split-width-threshold 100500)
 '(syslog-debug-face
   (quote
    ((t :background unspecified :foreground "#2aa198" :weight bold))))
 '(syslog-error-face
   (quote
    ((t :background unspecified :foreground "#dc322f" :weight bold))))
 '(syslog-hour-face (quote ((t :background unspecified :foreground "#859900"))))
 '(syslog-info-face
   (quote
    ((t :background unspecified :foreground "#268bd2" :weight bold))))
 '(syslog-ip-face (quote ((t :background unspecified :foreground "#b58900"))))
 '(syslog-su-face (quote ((t :background unspecified :foreground "#d33682"))))
 '(syslog-warn-face
   (quote
    ((t :background unspecified :foreground "#cb4b16" :weight bold))))
 '(tab-width 2)
 '(tabbar-mode t nil (tabbar))
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify))
 '(user-extempore-directory "/home/me/p/fork/extempore/")
 '(vc-annotate-background "#d4d4d4")
 '(vc-annotate-color-map
   (quote
    ((20 . "#437c7c")
     (40 . "#336c6c")
     (60 . "#205070")
     (80 . "#2f4070")
     (100 . "#1f3060")
     (120 . "#0f2050")
     (140 . "#a080a0")
     (160 . "#806080")
     (180 . "#704d70")
     (200 . "#603a60")
     (220 . "#502750")
     (240 . "#401440")
     (260 . "#6c1f1c")
     (280 . "#935f5c")
     (300 . "#834744")
     (320 . "#732f2c")
     (340 . "#6b400c")
     (360 . "#23733c"))))
 '(vc-annotate-very-old-color "#23733c")
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(whitespace-line-column 200)
 '(whitespace-style
   (quote
    (face tabs trailing lines space-before-tab empty space-after-tab tab-mark)))
 '(x-select-enable-clipboard nil)
 '(x-select-enable-primary t)
 '(yas-global-mode t nil (yasnippet)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(sml/setup)

(put 'narrow-to-page 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)
(setq warning-suppress-types nil)

(evil-mode t)

(add-to-list 'auto-mode-alist '("\\.html$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php$" . web-mode))

(global-set-key (kbd "s-+") 'evil-numbers/inc-at-pt)
(global-set-key (kbd "s--") 'evil-numbers/dec-at-pt)
(global-set-key (kbd "<f5>") 'helm-recentf)
(global-set-key (kbd "<f6>") 'gpicker-set-root-and-find-file)
(global-set-key (kbd "S-<f6>") 'gpicker-ask-project)
(global-set-key (kbd "C-<f6>") 'gpicker-visit-project-ask-type)
(global-set-key (kbd "C-S-<f6>") 'gpicker-set-project-type)
(global-set-key (kbd "<f7>") 'gpicker-imenu)
(global-set-key (kbd "S-<f7>") 'helm-imenu)
(global-set-key (kbd "<f8>") 'gpicker-goto-tag)
(global-set-key (kbd "S-<f8>") 'helm-etags-select)
(global-set-key (kbd "<f9>") 'neotree-toggle)
(global-set-key (kbd "M-;") 'comment-dwim-line)
(global-set-key (kbd "M-<tab>") 'switch-to-previous-buffer)
(global-set-key (kbd "<home>") 'smart-beginning-of-line)
(global-set-key (kbd "C-a") 'smart-beginning-of-line)
;; (global-set-key (kbd "C-<right>") #'(lambda () (interactive) (forward-char 5)))
;; (global-set-key (kbd "C-<left>") #'(lambda () (interactive) (backward-char 5)))
(global-set-key (kbd "C-<up>") #'(lambda () (interactive) (previous-line 3)))
(global-set-key (kbd "C-<down>") #'(lambda () (interactive) (next-line 3)))
(global-set-key (kbd "C-<SPC>") 'fold-dwim-toggle)
(global-set-key (kbd "C-S-<SPC>") 'fold-dwim-toggle-selective-display)
(global-set-key (kbd "C-c m") 'toggle-menu-bar-mode-from-frame)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "<mouse-6>") #'(lambda () (interactive) (scroll-right 1)))
(global-set-key (kbd "<mouse-7>") #'(lambda () (interactive) (scroll-left 1)))
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "S-<left>") 'windmove-left)
(global-set-key (kbd "S-<right>") 'windmove-right)
(global-set-key (kbd "S-<up>") 'windmove-up)
(global-set-key (kbd "S-<down>") 'windmove-down)
(global-set-key (kbd "C-<tab>") 'ac-trigger-key-command)

(require 'clojure-mode)
(add-to-list 'auto-mode-alist '("\\.boot\\'" . clojure-mode))
(define-key clojure-mode-map (kbd "C-<return>") 'cider-pprint-eval-last-sexp)
(define-key clojure-mode-map (kbd "C-S-<return>") 'cider-eval-buffer)
(define-key clojure-mode-map (kbd "S-<return>") 'cider-eval-last-sexp)

(define-key ruby-mode-map (kbd "C-<return>") 'ruby-send-last-sexp)
(define-key ruby-mode-map (kbd "C-S-<return>") 'ruby-send-region)
(define-key ruby-mode-map (kbd "S-<return>") 'ruby-send-block)

(define-clojure-indent
  (defsnippet 'defun)
  (alet 'defun)
  (mlet 'defun))

(defun cider-format-pprint-eval (form &optional right-margin)
  form)

(defun tabbar-goto-first-tab ()
  (interactive)
  (tabbar-click-on-tab (first (tabbar-tabs (tabbar-buffer-tabs)))))

(defun tabbar-goto-last-tab ()
  (interactive)
  (tabbar-click-on-tab (first (last (tabbar-tabs (tabbar-buffer-tabs))))))

(defun my-tabbar-buffer-groups () ;; customize to show all normal files in one group
  "Returns the name of the tab group names the current buffer belongs to.
 There are two groups: Emacs buffers (those whose name starts with '*', plus
 dired buffers), and the rest.  This works at least with Emacs v24.2 using
 tabbar.el v1.7."
  (list (cond ((string-equal "*" (substring (buffer-name) 0 1)) "emacs")
              ((eq major-mode 'dired-mode) "emacs")
              (t "user"))))
(setq tabbar-buffer-groups-function 'my-tabbar-buffer-groups)

(global-evil-leader-mode)
(evil-leader/set-key "b" 'magit-blame)
(evil-leader/set-key "B" 'magit-blame-quit)
(evil-leader/set-key "n" 'linum-mode)
(evil-leader/set-key ".r" 'robe-jump)
(evil-leader/set-key ".t" 'find-tag)
(evil-leader/set-key "w" 'delete-trailing-whitespace)
(evil-leader/set-key "tb" 'ruby-toggle-block)
(evil-leader/set-key "th" 'ruby-toggle-hash-syntax)
(evil-leader/set-key "d" 'toggle-window-dedicated)
(evil-leader/set-key "r" 'rspec-verify-single)
(evil-leader/set-key "R" 'rspec-verify)
(evil-leader/set-key "f" 'ag-project)
(evil-leader/set-key "F" 'ag-project-regexp)
(evil-leader/set-key "y" 'clipboard-kill-ring-save)
(evil-leader/set-key "p" 'clipboard-yank)
(define-key evil-normal-state-map "gt" 'tabbar-forward-tab)
(define-key evil-normal-state-map "gT" 'tabbar-backward-tab)
(define-key evil-normal-state-map "g^" 'tabbar-goto-first-tab)
(define-key evil-normal-state-map "g$" 'tabbar-goto-last-tab)
;; UI stuff goes here

(require 'fold-dwim)
(require 'uniquify)  ; add partial path to buffer name when identical filenames
(fset 'yes-or-no-p 'y-or-n-p)
;; (require 'icomplete)
;; (require 'icomplete+)
;; (icomplete-mode 99)

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

(add-to-list 'load-path "~/.emacs.d/plugins/lojban")
(require 'lojban-mode)

;; gpicker and supermegadoc
(require 'gpicker)
(add-to-list 'load-path "~/.emacs.d/plugins/supermegadoc")
(require 'supermegadoc)
(setq *supermegadoc-browse-url-function* 'browse-url)

(defun gpicker-visit-project-ask-type ()
  (interactive)
  (call-interactively 'gpicker-visit-project)
  (call-interactively 'gpicker-set-project-type))

(defun gpicker-set-root-and-find-file ()
  (interactive)
  (unless *gpicker-project-dir*
    (gpicker-visit-project-ask-type))
  (gpicker-find-file))

(defvar *gpicker-project-dirs*)
(setq *gpicker-project-dirs*
  (list
   "/home/me/p/active/fe/filemporium/"
   ))
(setq *gpicker-project-dir* (car *gpicker-project-dirs*))
(setq *gpicker-project-type* "guess")

(defun gpicker-ask-project ()
  (interactive)
  (setq *gpicker-project-dir*
        (helm-comp-read
         "Project: " *gpicker-project-dirs*)))

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

(require 'ac-cider)
(add-hook 'cider-mode-hook 'ac-flyspell-workaround)
(add-hook 'cider-mode-hook 'ac-cider-setup)
(add-hook 'cider-repl-mode-hook 'ac-cider-setup)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'cider-mode))

(add-hook 'ruby-mode-hook
          (lambda ()
            (make-local-variable 'ac-ignores)
            (add-to-list 'ac-ignores "end")))

(add-hook 'clojure-mode-hook
          (lambda () (eldoc-mode -1)))

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
(add-to-list 'auto-mode-alist '("\\.js$"       . js2-mode))

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
(add-hook 'clojure-mode-hook 'hs-minor-mode)
(put 'narrow-to-region 'disabled nil)

(add-hook 'js2-mode-hook 'skewer-mode)
(add-hook 'css-mode-hook 'skewer-css-mode)
(add-hook 'html-mode-hook 'skewer-html-mode)

(add-to-list 'load-path "/home/me/p/fork/factor/misc/fuel")
(require 'factor-mode)
(require 'fuel-mode)

(add-to-list 'load-path "/home/me/p/fork/extempore/extras")
(require 'extempore)
(add-to-list 'auto-mode-alist '("\\.xtm$" . extempore-mode))

(setq fuel-factor-root-dir "/home/me/p/fork/factor")
(server-start)
