(add-to-list 'load-path "~/.emacs.d/plugins")
(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

;; powerline
(add-to-list 'load-path "~/.emacs.d/plugins/powerline")
(require 'powerline)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-delay 0.2)
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(background-color "#002b36")
 '(background-mode dark)
 '(cursor-color "#839496")
 '(custom-enabled-themes (quote (tron)))
 '(custom-safe-themes (quote ("c582c1d99904ddc0677f87ba7eb6596cf9321a7e6233857dc4bd6ae587893194" "f07eb9c760be41f36d2971b205d0ec0e1bec9d84ba79e3bc31f26efe724a14f6" "2611d548a133727b1a956c4fa262935e993662a0aaa25d9532b04ab8f556a25b" "72cc9ae08503b8e977801c6d6ec17043b55313cda34bcf0e6921f2f04cf2da56" "5e1d1564b6a2435a2054aa345e81c89539a72c4cad8536cfe02583e0b7d5e2fa" "6cfe5b2f818c7b52723f3e121d1157cf9d95ed8923dbc1b47f392da80ef7495d" "d2622a2a2966905a5237b54f35996ca6fda2f79a9253d44793cfe31079e3c92b" "501caa208affa1145ccbb4b74b6cd66c3091e41c5bb66c677feda9def5eab19c" "fe6330ecf168de137bb5eddbf9faae1ec123787b5489c14fa5fa627de1d9f82b" "71b172ea4aad108801421cc5251edb6c792f3adbaecfa1c52e94e3d99634dee7" "30fe7e72186c728bd7c3e1b8d67bc10b846119c45a0f35c972ed427c45bacc19" "71efabb175ea1cf5c9768f10dad62bb2606f41d110152f4ace675325d28df8bd" default)))
 '(default-input-method "russian-computer")
 '(fci-rule-color "#383838")
 '(foreground-color "#839496")
 '(global-auto-complete-mode t)
 '(global-auto-revert-mode t)
 '(global-font-lock-mode t)
 '(history-length 1000)
 '(ido-enable-flex-matching t)
 '(ido-mode (quote buffer) nil (ido))
 '(inferior-js-program-command "/usr/bin/node")
 '(inhibit-startup-screen t)
 '(iswitchb-mode t)
 '(menu-bar-mode nil)
 '(mouse-drag-copy-region t)
 '(mouse-yank-at-point t)
 '(quack-global-menu-p nil)
 '(quack-pretty-lambda-p t)
 '(recentf-mode t)
 '(savehist-mode t nil (savehist))
 '(scroll-bar-mode nil)
 '(select-active-regions nil)
 '(slime-net-coding-system (quote utf-8-unix))
 '(solarized-termcolors 256)
 '(speedbar-indentation-width 2)
 '(speedbar-show-unknown-files t)
 '(speedbar-supported-extension-expressions (quote ("\\.rb" ".org" ".[ch]\\(\\+\\+\\|pp\\|c\\|h\\|xx\\)?" ".tex\\(i\\(nfo\\)?\\)?" ".el" ".emacs" ".l" ".lsp" ".p" ".java" ".js" ".f\\(90\\|77\\|or\\)?" ".ada" ".p[lm]" ".tcl" ".m" ".scm" ".pm" ".py" ".g" ".s?html" ".ma?k" "[Mm]akefile\\(\\.in\\)?" ".")))
 '(split-width-threshold 100500)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify))
 '(x-select-enable-clipboard nil)
 '(x-select-enable-primary t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(set-frame-parameter (selected-frame) 'alpha '(90 90))  ; (active inactive)
(add-to-list 'default-frame-alist '(alpha 90 90))

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
;;                                                  (replace-regexp-in-string ".*1G.*3G" "&gt;" output))))))
(require 'flymake-cursor)
(require 'recentf)
(require 'timid)
(timid-mode t)
;; (timid-iswitchb-setup)

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

;; git support
(add-to-list 'load-path "~/.emacs.d/plugins/git")
(require 'git)
(require 'git-blame)
(add-to-list 'load-path "~/.emacs.d/plugins/magit")
(require 'magit)

;; evil
(add-to-list 'load-path "~/.emacs.d/plugins/evil")
(require 'evil)
(evil-mode t)
(add-to-list 'load-path "~/.emacs.d/plugins/evil-surround")
(require 'surround)
(global-surround-mode t)

(defun evil-insert-jk-for-normal-mode ()
  (interactive)
  (insert "j")
  (let ((event (read-event nil)))
    (if (= event ?k)
      (progn
        (undo-tree-undo)
        (evil-normal-state))
      (push event unread-command-events))))
(define-key evil-insert-state-map "j" 'evil-insert-jk-for-normal-mode)

(defun undo-kill-buffer (arg)
  "Re-open the last buffer killed.  With ARG, re-open the nth buffer."
  (interactive "p")
  (let ((recently-killed-list (copy-sequence recentf-list))
	 (buffer-files-list
	  (delq nil (mapcar (lambda (buf)
			      (when (buffer-file-name buf)
				(expand-file-name (buffer-file-name buf)))) (buffer-list)))))
    (mapc
     (lambda (buf-file)
       (setq recently-killed-list
	     (delq buf-file recently-killed-list)))
     buffer-files-list)
    (find-file
     (if arg (nth arg recently-killed-list)
       (car recently-killed-list)))))
(global-set-key "\C-x\M-b" 'undo-kill-buffer)

(global-set-key (kbd "<f5>") 'recentf-open-files)

(require 'gpicker)
(defun gpicker-set-root-and-find-file ()
  (interactive)
  (unless *gpicker-project-dir*
    (call-interactively 'gpicker-visit-project))
  (gpicker-find-file))
(global-set-key (kbd "<f6>") 'gpicker-set-root-and-find-file)
(global-set-key (kbd "C-<f6>") 'gpicker-visit-project)
(global-set-key (kbd "<f7>") 'gpicker-imenu)
(global-set-key (kbd "<f8>") 'gpicker-goto-tag)
(global-set-key (kbd "<f9>") 'gpicker-isearch)

;; supermegadoc
(add-to-list 'load-path "~/.emacs.d/plugins/supermegadoc")
(require 'supermegadoc)
(setq *supermegadoc-browse-url-function* 'browse-url)
(add-hook 'erlang-mode-hook
          #'(lambda ()
              (local-set-key (kbd "s-q") 'supermegadoc-erlang)))


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

(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-13"))

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
        If no region is selected and current line is not blank and we are not at the end of the line,
        then comment current line.
        Replaces default behaviour of comment-dwim, when it inserts comment at the end of the line."
          (interactive "*P")
          (comment-normalize-vars)
          (if (and (not (region-active-p)) (not (looking-at "[ \t]*$")))
              (comment-or-uncomment-region (line-beginning-position) (line-end-position))
            (comment-dwim arg)))

(global-set-key "\M-;" 'comment-dwim-line)

;; ;;icicles
;; (add-to-list 'load-path "~/.emacs.d/plugins/icicles")
;; (require 'icicles)
;; (require 'icicles-iswitchb)
;; (icy-mode)
;; (iswitchb-mode 1)
;; (global-set-key (kbd "C-x b") 'iswitchb-buffer)

;; window-numbering
(require 'window-numbering)
(window-numbering-mode 1)

;; mult-eshell
(require 'multi-eshell)

;; resize windows with C-M-<arrows>
(require 'winresize)

;; yasnippet
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet-0.6.1c")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugins/yasnippet-0.6.1c/snippets")

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

;; auto complete
(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete/lib/popup")
(require 'popup)
(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete")
(setq ac-dictionary-directories '())
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/auto-complete/dict")
(require 'auto-complete-config)
(ac-config-default)
(define-key ac-completing-map "\t" 'ac-complete)
(define-key ac-completing-map "\r" nil)

;; (add-hook 'ruby-mode-hook
;;           (lambda ()
;;             (make-local-variable 'ac-ignores)
;;             (add-to-list 'ac-ignores "end")))


;; textmate.el
;; (add-to-list 'load-path "~/.emacs.d/plugins/textmate.el")
;; (require 'textmate)
;; (textmate-mode)

;; lua-mode
(add-to-list 'load-path "~/.emacs.d/plugins/lua-mode")
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))


;; erlang-mode
(add-to-list 'load-path (car (file-expand-wildcards "/usr/lib/erlang/lib/tools-*/emacs")))
(setq erlang-root-dir "/usr/lib/erlang")
(add-to-list 'exec-path "/usr/lib/erlang/bin")
(setq inferior-erlang-machine-options '("-sname" "emacs"))
(require 'erlang-start)
(require 'erlang-flymake)
(require 'erlang-eunit)
(add-to-list 'load-path "~/.emacs.d/plugins/distel/elisp")
(require 'distel)
(require 'distel-ie)
(distel-setup)
(add-hook 'erlang-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-c C-b") 'erlang-compile)))

;; scala-mode
(add-to-list 'load-path "~/.emacs.d/plugins/scala-mode")
(require 'scala-mode-auto)
(add-to-list 'load-path "~/.emacs.d/plugins/ensime/elisp")
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; clojure-mode
(add-to-list 'load-path "~/.emacs.d/plugins/clojure-mode")
(require 'clojure-mode)

;; k-mode
(require 'k-mode)

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

;; ;; paredit
;; (autoload 'paredit-mode "paredit"
;;   "Minor mode for pseudo-structurally editing Lisp code." t)
;; (add-hook 'emacs-lisp-mode-hook       (lambda () (paredit-mode +1)))
;; (add-hook 'lisp-mode-hook             (lambda () (paredit-mode +1)))
;; (add-hook 'lisp-interaction-mode-hook (lambda () (paredit-mode +1)))
;; (add-hook 'scheme-mode-hook           (lambda () (paredit-mode +1)))
;; (add-hook 'clojure-mode-hook          (lambda () (paredit-mode +1)))
;; (require 'eldoc) ; if not already loaded
;; (eldoc-add-command
;;  'paredit-backward-delete
;;  'paredit-close-round)
;; (add-hook 'slime-repl-mode-hook (lambda () (paredit-mode +1)))
;; ;; Stop SLIME's REPL from grabbing DEL,
;; ;; which is annoying when backspacing over a '('
;; (defun override-slime-repl-bindings-with-paredit ()
;;   (define-key slime-repl-mode-map
;;     (read-kbd-macro paredit-backward-delete-key) nil))
;; (add-hook 'slime-repl-mode-hook 'override-slime-repl-bindings-with-paredit)

;; asy-mode, lasy-mode,
(add-to-list 'load-path "/usr/local/texlive/2010/texmf/asymptote/")
(autoload 'asy-mode "asy-mode.el" "Asymptote major mode." t)
(autoload 'lasy-mode "asy-mode.el" "hybrid Asymptote/Latex major mode." t)
(autoload 'asy-insinuate-latex "asy-mode.el" "Asymptote insinuate LaTeX." t)
(add-to-list 'auto-mode-alist '("\\.asy$" . asy-mode))

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

(add-to-list 'load-path "~/.emacs.d/plugins/rcodetools")
(require 'rcodetools)

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
                 "\\(def\\|do\\)"
                 "end"
                 "#"
                 (lambda (&rest args) (ruby-end-of-block))
                 ;; (lambda (&rest args) (ruby-beginning-of-defun))
                 )
           hs-special-modes-alist)))
  (hs-minor-mode arg))


(add-hook 'lisp-mode-hook 'hs-minor-mode)
(global-set-key (kbd "s-<SPC>") 'hs-toggle-hiding)

;; octave-mode
(autoload 'octave-mode "octave-mod" nil t)
(add-to-list 'auto-mode-alist '("\\.m$" . octave-mode))

(add-hook 'ruby-mode-hook
          (lambda ()
            ;; (add-to-list 'ac-sources 'ac-source-rsense-method)
            ;; (add-to-list 'ac-sources 'ac-source-rsense-constant)
            (ruby-hs-minor-mode)))

(defun toggle-selective-display (column)
  (interactive "P")
  (set-selective-display
   (or column
       (unless selective-display
         (1+ (progn
               (back-to-indentation)
               (current-column)))))))
(global-set-key (kbd "C-*") 'toggle-selective-display)

;; rails
(add-to-list 'load-path "~/.emacs.d/plugins/emacs-rails")
(require 'rails)

;; rinari
;; (add-to-list 'load-path "~/.emacs.d/plugins/rinari")
;; (require 'rinari)
;; (setq rinari-tags-file-name "TAGS")

(add-to-list 'load-path "~/.emacs.d/plugins/rhtml")
(require 'rhtml-mode)
;; (add-hook 'rhtml-mode-hook
;;           (lambda () (rinari-launch)))

(add-to-list 'load-path "~/.emacs.d/plugins/eproject")
(require 'eproject)

(require 'ack)
(defun ack-in-project (pattern)
  "Run ack, with user-specified ARGS, and collect output in a buffer.
While ack runs asynchronously, you can use the \\[next-error] command to
find the text that ack hits refer to. The command actually run is
defined by the ack-command variable."
  (interactive (list (read-string "Ack for (in app root): " (thing-at-point 'symbol))))
  (let (compile-command
        (compilation-error-regexp-alist grep-regexp-alist)
        (compilation-directory default-directory)
        (ack-full-buffer-name (concat "*ack-" pattern "*")))

    ;; lambda defined here since compilation-start expects to call a function to get the buffer name
    (compilation-start (concat ack-command " -i --noheading --nocolor " pattern " " (rails-project:root)) 'ack-mode
                       (when ack-use-search-in-buffer-name
                         (function (lambda (ignore)
                                     ack-full-buffer-name)))
                       (regexp-quote pattern))))
(global-set-key "\C-c\C-fa" 'ack-in-project)

(require 'nav)

;; rsense
(setq rsense-home (expand-file-name "~/.emacs.d/plugins/rsense"))
(add-to-list 'load-path (concat rsense-home "/etc"))
(require 'rsense)

;; ruby-debug
(add-to-list 'load-path "~/.emacs.d/plugins/ruby-debug")
(require 'rdebug)

;; YARI
(add-to-list 'load-path "~/.emacs.d/plugins/yari.el")
(require 'yari)

;; cperl mode by default
(defalias 'perl-mode 'cperl-mode)

;; twittering mode
(add-to-list 'load-path "~/.emacs.d/plugins/twittering-mode")
(require 'twittering-mode)

(add-to-list 'load-path "~/.emacs.d/plugins/minimap")
(require 'minimap)

(define-key ctl-x-map "r\C-@" 'rm-set-mark)
(define-key ctl-x-map [?r ?\C-\ ] 'rm-set-mark)
(define-key ctl-x-map "r\C-x" 'rm-exchange-point-and-mark)
(define-key ctl-x-map "r\C-w" 'rm-kill-region)
(define-key ctl-x-map "r\M-w" 'rm-kill-ring-save)
(define-key global-map [S-down-mouse-1] 'rm-mouse-drag-region)
(autoload 'rm-set-mark "rect-mark"
  "Set mark for rectangle." t)
(autoload 'rm-exchange-point-and-mark "rect-mark"
  "Exchange point and mark for rectangle." t)
(autoload 'rm-kill-region "rect-mark"
  "Kill a rectangular region and save it in the kill ring." t)
(autoload 'rm-kill-ring-save "rect-mark"
  "Copy a rectangular region to the kill ring." t)
(autoload 'rm-mouse-drag-region "rect-mark"
  "Drag out a rectangular region with the mouse." t)

;; rainbow-mode
(add-to-list 'load-path "~/.emacs.d/plugins/rainbow")
(require 'rainbow-mode)

(global-rainbow-delimiters-mode)

;; full screen toggle using f11
(defun toggle-fullscreen ()
  (interactive)
  (set-frame-parameter nil
                       'fullscreen
                       (if (frame-parameter nil 'fullscreen)
                           nil
                         'fullboth)))
(global-set-key (kbd "<f11>") 'toggle-fullscreen)

;; show/hide menubar
(global-set-key (kbd "C-c m") '(lambda ()
                                 (interactive)
                                 (toggle-menu-bar-mode-from-frame)
                                 ;; (restore-frame)
                                 ))

(global-set-key (kbd "C-c (") '(lambda () (interactive) (insert "[")))
(global-set-key (kbd "C-c )") '(lambda () (interactive) (insert "]")))
(global-set-key (kbd "C-c <") '(lambda () (interactive) (insert "{")))
(global-set-key (kbd "C-c >") '(lambda () (interactive) (insert "}")))
(global-set-key (kbd "C-c !") '(lambda () (interactive) (insert "%")))

(global-set-key [mouse-6] 'next-buffer)
(global-set-key [mouse-7] 'previous-buffer)

; (server-start)
