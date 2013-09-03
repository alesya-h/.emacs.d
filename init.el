(add-to-list 'load-path "~/.emacs.d/plugins")
(require 'package)
(add-to-list 'package-archives
    '("marmalade" .
      "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
    '("melpa" .
      "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-delay 0.2)
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(ansi-term-color-vector [unspecified "#1F1611" "#660000" "#144212" "#EFC232" "#5798AE" "#BE73FD" "#93C1BC" "#E6E1DC"])
 '(c-basic-offset 4)
 '(c-default-style (quote ((c-mode . "k&r") (java-mode . "java") (awk-mode . "awk") (other . "gnu"))))
 '(compilation-message-face (quote default))
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes t)
 '(default-input-method "russian-computer")
 '(evil-leader/leader "l")
 '(evil-search-module (quote evil-search))
 '(fci-rule-character-color "#452E2E")
 '(fci-rule-color "#383838")
 '(foreground-color "#839496")
 '(frame-brackground-mode (quote dark))
 '(fringe-mode 6 nil (fringe))
 '(global-auto-complete-mode t)
 '(global-auto-revert-mode t)
 '(global-font-lock-mode t)
 '(global-rinari-mode t)
 '(global-whitespace-mode t)
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-tail-colors (quote (("#073642" . 0) ("#546E00" . 20) ("#00736F" . 30) ("#00629D" . 50) ("#7B6000" . 60) ("#8B2C02" . 70) ("#93115C" . 85) ("#073642" . 100))))
 '(history-length 1000)
 '(ido-enable-flex-matching t)
 '(ido-mode (quote buffer) nil (ido))
 '(inferior-js-program-command "/usr/bin/js")
 '(inhibit-startup-screen t)
 '(iswitchb-mode t)
 '(latex-run-command "pdflatex")
 '(magit-wip-mode t)
 '(main-line-color1 "#191919")
 '(main-line-color2 "#111111")
 '(main-line-separator-style (quote chamfer))
 '(menu-bar-mode nil)
 '(mouse-drag-copy-region t)
 '(mouse-yank-at-point t)
 '(quack-global-menu-p nil)
 '(quack-pretty-lambda-p t)
 '(recentf-mode t)
 '(rspec-use-rake-when-possible nil)
 '(ruby-deep-indent-paren nil)
 '(savehist-mode t nil (savehist))
 '(scroll-bar-mode nil)
 '(select-active-regions nil)
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

;; (set-frame-parameter (selected-frame) 'font "DejaVu Sans Mono-13")
;; (add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-13"))

;; powerline
(powerline-default-theme)

(put 'narrow-to-page 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)
(setq warning-suppress-types nil)

;; UI stuff goes here
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(show-paren-mode t)
(require 'rainbow-delimiters)
(require 'js-comint)
;; (setq inferior-js-mode-hook
;;       (lambda ()
;;         ;; We like nice colors
;;         (ansi-color-for-comint-mode-on)
;;         ;; Deal with some prompt nonsense
;;         (add-to-list 'comint-preoutput-filter-functions
;;                      (lambda (output)
;;                        (replace-regexp-in-string ".*1G\.\.\..*5G" "..."
;;                          (replace-regexp-in-string ".*1G.*3G" "&gt;" output))))))
(require 'flymake-cursor)
(require 'recentf)

;; liquid-mode
(add-to-list 'load-path "~/.emacs.d/plugins/liquid-mode")
(require 'liquid-mode)

;; undo-tree
(add-to-list 'load-path "~/.emacs.d/plugins/undo-tree")
(require 'undo-tree)

;; flymake-node-jshint
(add-to-list 'load-path "~/.emacs.d/plugins/flymake-node-jshint")
(require 'flymake-node-jshint)
; (setq flymake-node-jshint-config "~/.jshintrc-node.json") ; optional
(add-hook 'js-mode-hook (lambda () (flymake-mode 1)))

;; evil
(add-to-list 'load-path "~/.emacs.d/plugins/evil")
(require 'evil)
(evil-mode t)
(add-to-list 'load-path "~/.emacs.d/plugins/evil-numbers")
(require 'evil-numbers)
(global-set-key (kbd "s-+") 'evil-numbers/inc-at-pt)
(global-set-key (kbd "s--") 'evil-numbers/dec-at-pt)
(add-to-list 'load-path "~/.emacs.d/plugins/evil-surround")
(require 'surround)
(global-surround-mode t)

(global-evil-leader-mode)
(evil-leader/set-key "b" 'magit-blame-mode)
(evil-leader/set-key "n" 'linum-mode)
(evil-leader/set-key "." 'robe-jump)
(evil-leader/set-key "w" 'delete-trailing-whitespace)
(evil-leader/set-key "M-." 'find-tag)

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

(evil-leader/set-key "d" 'toggle-window-dedicated)
(evil-leader/set-key "r" 'rspec-verify-single)

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

(global-set-key (kbd "<f5>") 'recentf-open-files)

;; gpicker and supermegadoc
(require 'gpicker)
(add-to-list 'load-path "~/.emacs.d/plugins/supermegadoc")
(require 'supermegadoc)
(setq *supermegadoc-browse-url-function* 'browse-url)
(setq *gpicker-project-dir* "/home/me/p/work/xv_web3")
(defun gpicker-visit-project-ask-type ()
  (interactive)
  (call-interactively 'gpicker-visit-project)
  (call-interactively 'gpicker-set-project-type))

(defun gpicker-set-root-and-find-file ()
  (interactive)
  (unless *gpicker-project-dir*
    (gpicker-visit-project-ask-type))
  (gpicker-find-file))

(global-set-key (kbd "<f6>") 'gpicker-set-root-and-find-file)
(global-set-key (kbd "C-<f6>") 'gpicker-visit-project-ask-type)
(global-set-key (kbd "<f7>") 'gpicker-imenu)
(global-set-key (kbd "<f8>") 'gpicker-goto-tag)
(global-set-key (kbd "<f9>") 'supermegadoc-ri)

(global-magit-wip-save-mode 1)

(require 'speedbar)
(require 'uniquify)
(require 'icomplete)
(require 'icomplete+)
(icomplete-mode 99)

;; minimap
(add-to-list 'load-path "~/.emacs.d/plugins/minimap")
(require 'minimap)

;; nyan-mode
;(add-to-list 'load-path "~/.emacs.d/plugins/nyan-mode")
;(require 'nyan-mode)
;(nyan-mode)

;; replace "yes-or-no" with "y-or-n"
(fset 'yes-or-no-p 'y-or-n-p)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;; Plugins stuff goes here

;; autostart org-mode for .org files
(add-to-list 'load-path "~/.emacs.d/plugins/org-mode/lisp")
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; imenu
(require 'imenu)

;; pos-tip
(require 'pos-tip)

(defun smart-beginning-of-line ()
  "Move point to first non-whitespace character or beginning-of-line.

Move point to the first non-whitespace character on this line.
If point was already at that position, move point to beginning of line."
  (interactive)
  (let ((oldpos (point)))
    (back-to-indentation)
    (and (= oldpos (point))
         (beginning-of-line))))
(global-set-key [home] 'smart-beginning-of-line)
(global-set-key "\C-a" 'smart-beginning-of-line)

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

(global-set-key "\M-;" 'comment-dwim-line)

(defun switch-to-previous-buffer ()
  "Switch to previously open buffer.
Repeated invocations toggle between the two most recently open buffers."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

(global-set-key (kbd "s-<tab>") 'switch-to-previous-buffer)

;; mult-eshell
(require 'multi-eshell)

;; Lorem Ipsum
(require 'lorem-ipsum)
(add-hook 'sgml-mode-hook (lambda ()
                            (setq Lorem-ipsum-paragraph-separator "<br><br>\n"
                                  Lorem-ipsum-sentence-separator "&nbsp;&nbsp;"
                                  Lorem-ipsum-list-beginning "<ul>\n"
                                  Lorem-ipsum-list-bullet "<li>"
                                  Lorem-ipsum-list-item-end "</li>\n"
                                  Lorem-ipsum-list-end "</ul>\n")))

;; mode-compile
(autoload 'mode-compile "mode-compile"
  "Command to compile current buffer file based on the major mode" t)
;(global-set-key "\C-cc" 'mode-compile)
(autoload 'mode-compile-kill "mode-compile"
  "Command to kill a compilation launched by `mode-compile'" t)
;(global-set-key "\C-ck" 'mode-compile-kill)

;; ;; auto complete
(require 'auto-complete-config)
(ac-config-default)
(define-key ac-completing-map "\t" 'ac-complete)
(define-key ac-completing-map "\r" nil)

(add-hook 'ruby-mode-hook
          (lambda ()
            (make-local-variable 'ac-ignores)
            (add-to-list 'ac-ignores "end")))

;; lua-mode
(add-to-list 'load-path "~/.emacs.d/plugins/lua-mode")
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))
(require 'lua2-mode)

;; erlang-mode
;(add-to-list 'load-path (car (file-expand-wildcards "/usr/lib/erlang/lib/tools-*/emacs")))
;(setq erlang-root-dir "/usr/lib/erlang")
;(add-to-list 'exec-path "/usr/lib/erlang/bin")
;(setq inferior-erlang-machine-options '("-sname" "emacs"))
;(require 'erlang-start)
;(require 'erlang-flymake)
;(require 'erlang-eunit)
;(add-to-list 'load-path "~/.emacs.d/plugins/distel/elisp")
;(require 'distel)
;(require 'distel-ie)
;(distel-setup)
;(add-hook 'erlang-mode-hook
;          '(lambda ()
;             (local-set-key (kbd "C-c C-b") 'erlang-compile)))

;; scala-mode
(add-to-list 'load-path "~/.emacs.d/plugins/scala-mode")
(require 'scala-mode-auto)
;; (add-to-list 'load-path "~/.emacs.d/plugins/ensime/elisp")
;; (require 'ensime)
;; (add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; clojure-mode
(add-to-list 'load-path "~/.emacs.d/plugins/clojure-mode")
(require 'clojure-mode)

;; objj-mode
(add-to-list 'load-path "~/.emacs.d/plugins/objj-mode")
(require 'objj-mode)

;; k-mode
(require 'k-mode)

;; fuel (factor mode)
(add-to-list 'load-path "~/p/fork/factor/misc/fuel")
(setq fuel-factor-root-dir "~/p/fork/factor")
(require 'factor-mode)
(require 'fuel-mode)

;; yaml-mode
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))

;; mode for coffeescript
(add-to-list 'load-path "~/.emacs.d/plugins/coffee-mode")
(require 'coffee-mode)

;;markdown-mode
(autoload 'markdown-mode "markdown-mode.el"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown" . markdown-mode))

;; quack (racket/scheme for emacs)
(require 'quack)

;; slime via quicklisp
(load (expand-file-name "~/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "clisp -ansi")
(setq common-lisp-hyperspec-root "~/.emacs.d/HyperSpec/")

;; asy-mode, lasy-mode,
(add-to-list 'load-path "/usr/local/texlive/2010/texmf/asymptote/")
(autoload 'asy-mode "asy-mode.el" "Asymptote major mode." t)
(autoload 'lasy-mode "asy-mode.el" "hybrid Asymptote/Latex major mode." t)
(autoload 'asy-insinuate-latex "asy-mode.el" "Asymptote insinuate LaTeX." t)
(add-to-list 'auto-mode-alist '("\\.asy$" . asy-mode))

;; tex-mode
(add-hook 'tex-mode-hook 'auto-fill-mode)

;; zencoding
(require 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode) ;; Auto-start on any markup modes
(add-hook 'nxhtml-mode-hook 'zencoding-mode)

;; haml-mode
(add-to-list 'load-path "~/.emacs.d/plugins/haml-mode")
(require 'haml-mode)

;; slim-mode
(require 'slim-mode)

;; sass-mode
(add-to-list 'load-path "~/.emacs.d/plugins/sass-mode")
(require 'sass-mode)

;; helm
(add-to-list 'load-path "~/.emacs.d/plugins/helm")
(require 'helm-config)

;; scss-mode
(add-to-list 'load-path "~/.emacs.d/plugins/scss-mode")
(require 'scss-mode)
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
(setq scss-compile-at-save nil)
(add-hook 'scss-mode-hook '(lambda ()
                             (rainbow-mode)
                             (hs-minor-mode)
                             (auto-complete-mode)))
(add-hook 'css-mode-hook '(lambda ()
                             (rainbow-mode)
                             (hs-minor-mode)
                             (auto-complete-mode)))

;; ruby-mode
(add-to-list 'auto-mode-alist '("Capfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))

(eval-after-load 'rspec-mode
  '(rspec-install-snippets))

(require 'align)
(add-to-list
 'align-rules-list
 '(symbol-value-alignment
   (regexp . "\\w+:\\(\\s-*\\)")
   (group . 1)
   (modes . '(ruby-mode coffee-mode yaml-mode javascript-mode))
   (repeat . nil)))

;; (add-to-list
;;  'align-rules-list
;;  '(symbol-value-alignment
;;    (regexp . "=>\\(\\s-*\\)")
;;    (group . 1)
;;    (modes . '(ruby-mode))
;;    (repeat . nil)))

;; ruby-debug
;; (add-to-list 'load-path "~/.emacs.d/plugins/ruby-debug")
;; (require 'rdebug)

;; YARI
(add-to-list 'load-path "~/.emacs.d/plugins/yari.el")
(require 'yari)

(add-hook 'ruby-mode-hook 'robe-mode)
(push 'ac-source-robe ac-sources)

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
(global-set-key (kbd "s-<SPC>") 'hs-toggle-hiding)

;; octave-mode
(autoload 'octave-mode "octave-mod" nil t)
(add-to-list 'auto-mode-alist '("\\.m$" . octave-mode))

(defun toggle-selective-display (column)
  (interactive "P")
  (set-selective-display
   (or column
       (unless selective-display
         (1+ (progn
               (back-to-indentation)
               (current-column)))))))
(global-set-key (kbd "C-*") 'toggle-selective-display)

(add-to-list 'load-path "~/.emacs.d/plugins/rhtml")
(require 'rhtml-mode)
;; (add-hook 'rhtml-mode-hook
;;           (lambda () (rinari-launch)))

(setq ag-highlight-search t)
(global-set-key "\C-c\C-fa" 'ag-project)

(require 'nav)

;; cperl mode by default
(defalias 'perl-mode 'cperl-mode)

(add-to-list 'load-path "~/.emacs.d/plugins/minimap")
(require 'minimap)

;; rainbow-mode
(add-to-list 'load-path "~/.emacs.d/plugins/rainbow")
(require 'rainbow-mode)

(global-rainbow-delimiters-mode)

;; show/hide menubar
(global-set-key (kbd "C-c m") 'toggle-menu-bar-mode-from-frame)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'narrow-to-region 'disabled nil)
