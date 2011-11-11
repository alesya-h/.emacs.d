(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default-input-method "russian-computer")
 '(global-font-lock-mode t)
 '(ido-enable-flex-matching t)
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(quack-global-menu-p nil)
 '(quack-pretty-lambda-p t)
 '(scroll-bar-mode nil)
 '(slime-net-coding-system (quote utf-8-unix))
 '(tool-bar-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(put 'dired-find-alternate-file 'disabled nil)

(setq warning-suppress-types nil)

;; UI stuff goes here
(setq-default indent-tabs-mode nil)

(show-paren-mode t)

;; X-specific parameters
(add-hook 'after-make-frame-functions '(lambda (frame)

(if (eq window-system 'x)
    (progn

(defun font-existsp (font)
  (if (null (x-list-fonts font))
      nil t))

;; set frame font
(cond
 ((font-existsp "DejaVu Sans Mono") (set-frame-font "DejaVu Sans Mono:size=15" t))
 ((font-existsp "Inconsolata") (progn (set-frame-font "Inconsolata-12" t)
                                      (set-fontset-font
                                       "fontset-default" ; (frame-parameter nil 'font)
                                       'cyrillic '("DejaVu Sans Mono" . "unicode-bmp"))))
)
))

)) ;; End of X-specific parameters


;; replace "yes-or-no" with "y-or-n"
(fset 'yes-or-no-p 'y-or-n-p)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;; Plugins stuff goes here
(add-to-list 'load-path "~/.emacs.d/plugins")

;; maximize emacs on start
(require 'maxframe)
(add-hook 'window-setup-hook 'maximize-frame t)
;; (maximize-frame)

;; autostart org-mode for .org files
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;; ido
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

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

;;icicles
;; (add-to-list 'load-path "~/.emacs.d/plugins/icicles")
;; (require 'icicles)
;; (icy-mode 1)

;; window-numbering
(require 'window-numbering)
(window-numbering-mode 1)

;; mult-eshell
(require 'multi-eshell)

;; resize windows with C-M-<arrows>
(require 'winresize)

;; git support
(add-to-list 'load-path "~/.emacs.d/plugins/git")
(require 'git)
(require 'git-blame)

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

;; imenu
(require 'imenu)

(defun ido-goto-symbol (&optional symbol-list)
  "Refresh imenu and jump to a place in the buffer using Ido."
  (interactive)
  (unless (featurep 'imenu)
    (require 'imenu nil t))
  (cond
   ((not symbol-list)
    (let ((ido-mode ido-mode)
          (ido-enable-flex-matching
           (if (boundp 'ido-enable-flex-matching)
               ido-enable-flex-matching t))
          name-and-pos symbol-names position)
      (unless ido-mode
        (ido-mode 1)
        (setq ido-enable-flex-matching t))
      (while (progn
               (imenu--cleanup)
               (setq imenu--index-alist nil)
               (ido-goto-symbol (imenu--make-index-alist))
               (setq selected-symbol
                     (ido-completing-read "Symbol? " symbol-names))
               (string= (car imenu--rescan-item) selected-symbol)))
      (unless (and (boundp 'mark-active) mark-active)
        (push-mark nil t nil))
      (setq position (cdr (assoc selected-symbol name-and-pos)))
      (cond
       ((overlayp position)
        (goto-char (overlay-start position)))
       (t
        (goto-char position)))))
   ((listp symbol-list)
    (dolist (symbol symbol-list)
      (let (name position)
        (cond
         ((and (listp symbol) (imenu--subalist-p symbol))
          (ido-goto-symbol symbol))
         ((listp symbol)
          (setq name (car symbol))
          (setq position (cdr symbol)))
         ((stringp symbol)
          (setq name symbol)
          (setq position
                (get-text-property 1 'org-imenu-marker symbol))))
        (unless (or (null position) (null name)
                    (string= (car imenu--rescan-item) name))
          (add-to-list 'symbol-names name)
          (add-to-list 'name-and-pos (cons name position))))))))
(global-set-key "\C-ci" 'ido-goto-symbol) ; or any key you see fit


;; textmate.el
(add-to-list 'load-path "~/.emacs.d/plugins/textmate.el")
(require 'textmate)
(textmate-mode)

;; rvm.el
;; (require 'rvm)
;; (rvm-use-default)

;; lua-mode
(add-to-list 'load-path "~/.emacs.d/plugins/lua-mode")
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))


;; erlang-mode
(add-to-list 'load-path "~/.emacs.d/plugins/erlang")
(setq erlang-root-dir "/usr/lib/erlang")
(add-to-list 'exec-path "/usr/lib/erlang/bin")
(require 'erlang-start)
(require 'erlang-flymake)
(add-hook 'erlang-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-c C-b") 'erlang-compile)))

;; scala-mode
(add-to-list 'load-path "~/.emacs.d/plugins/scala-mode")
(require 'scala-mode-auto)
;;(add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))

;; clojure-mode
(add-to-list 'load-path "~/.emacs.d/plugins/clojure-mode")
(require 'clojure-mode)


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

;; slime

(setq inferior-lisp-program "/usr/bin/sbcl") ; your Lisp system
(add-to-list 'load-path "~/quicklisp/dists/quicklisp/software/slime-20111001-cvs") ; your SLIME directory
(require 'slime)
(slime-setup '(slime-fancy))

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

;; sass-mode
(add-to-list 'load-path "~/.emacs.d/plugins/sass-mode")
(require 'sass-mode)

;; scss-mode
(add-to-list 'load-path "~/.emacs.d/plugins/scss-mode")
(require 'scss-mode)
(setq scss-compile-at-save nil)
(add-hook 'scss-mode-hook '(lambda ()
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


(global-set-key (kbd "s-<SPC>") 'hs-toggle-hiding)
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

;; rails-reloaded
;; (add-to-list 'load-path "~/.emacs.d/plugins/emacs-rails-reloaded")
;; (require 'rails-autoload)

;; rinari
(add-to-list 'load-path "~/.emacs.d/plugins/rinari")
(require 'rinari)

(add-to-list 'load-path "~/.emacs.d/plugins/rhtml")
(require 'rhtml-mode)
(setq rinari-tags-file-name "TAGS")
(add-hook 'rhtml-mode-hook
          (lambda () (rinari-launch)))

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

(add-hook 'ruby-mode-hook
          '(lambda ()
             (local-set-key [f1] 'yari-anything)))

;; cperl mode by default
(defalias 'perl-mode 'cperl-mode)

  ;;; integrate ido with artist-mode
(defun artist-ido-select-operation (type)
  "Use ido to select a drawing operation in artist-mode"
  (interactive (list (ido-completing-read "Drawing operation: " 
                                          (list "Pen" "Pen Line" "line" "straight line" "rectangle" 
                                                "square" "poly-line" "straight poly-line" "ellipse" 
                                                "circle" "text see-thru" "text-overwrite" "spray-can" 
                                                "erase char" "erase rectangle" "vaporize line" "vaporize lines" 
                                                "cut rectangle" "cut square" "copy rectangle" "copy square" 
                                                "paste" "flood-fill"))))
  (artist-select-operation type))
(defun artist-ido-select-settings (type)
  "Use ido to select a setting to change in artist-mode"
  (interactive (list (ido-completing-read "Setting: " 
                                          (list "Set Fill" "Set Line" "Set Erase" "Spray-size" "Spray-chars" 
                                                "Rubber-banding" "Trimming" "Borders"))))
  (if (equal type "Spray-size") 
      (artist-select-operation "spray set size")
    (call-interactively (artist-fc-get-fn-from-symbol 
                         (cdr (assoc type '(("Set Fill" . set-fill)
                                            ("Set Line" . set-line)
                                            ("Set Erase" . set-erase)
                                            ("Rubber-banding" . rubber-band)
                                            ("Trimming" . trimming)
                                            ("Borders" . borders)
                                            ("Spray-chars" . spray-chars))))))))
(add-hook 'artist-mode-init-hook 
          (lambda ()
            (define-key artist-mode-map (kbd "C-c C-a C-o") 'artist-ido-select-operation)
            (define-key artist-mode-map (kbd "C-c C-a C-c") 'artist-ido-select-settings)
            (define-key artist-mode-map [down-mouse-3] 'artist-mouse-choose-operation)
            (define-key artist-mode-map [S-down-mouse-3] 'artist-down-mouse-3)))


;; twittering mode
(add-to-list 'load-path "~/.emacs.d/plugins/twittering-mode")
(require 'twittering-mode)

;; stumpwm-mode
(require 'stumpwm-mode)

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

;; color-theme
(add-to-list 'load-path "~/.emacs.d/plugins/color-theme-6.6.0")
(require 'color-theme)
(add-to-list 'load-path "~/.emacs.d/plugins/color-themes")
(require 'color-theme-molokai)
(require 'color-theme-almost-monokai)
(require 'my-supercool-theme)


(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-almost-monokai)
     ;; (color-theme-molokai)
     (my-supercool-theme)
))

;; full screen toggle using f11
(defun toggle-fullscreen () 
  (interactive) 
  (set-frame-parameter nil
                       'fullscreen
                       (if (frame-parameter nil 'fullscreen)
                           nil
                         'fullboth)))
(global-set-key [(f11)] 'toggle-fullscreen)

;; show/hide menubar by f12
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


;; emacs server
(if (not (boundp 'server-process))
    (progn
      (server-start)
      (add-hook 'server-switch-hook
                (lambda ()
                  (when (current-local-map)
                    (use-local-map (copy-keymap (current-local-map))))
                  (when server-buffer-clients
                    (local-set-key (kbd "C-x k") 'server-edit))))))

(put 'narrow-to-page 'disabled nil)
