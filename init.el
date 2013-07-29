(add-to-list 'load-path "~/.emacs.d/plugins")
(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
    '("melpa" .
      "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; powerline
(add-to-list 'load-path "~/.emacs.d/plugins/powerline")
(require 'powerline)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Linum-format "%7i ")
 '(ac-delay 0.2)
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(ansi-term-color-vector [unspecified "#1F1611" "#660000" "#144212" "#EFC232" "#5798AE" "#BE73FD" "#93C1BC" "#E6E1DC"])
 '(c-basic-offset 4)
 '(c-default-style (quote ((c-mode . "k&r") (java-mode . "java") (awk-mode . "awk") (other . "gnu"))))
 '(compilation-message-face (quote default))
 '(custom-enabled-themes (quote (leuven)))
 '(custom-safe-themes (quote ("fc6e906a0e6ead5747ab2e7c5838166f7350b958d82e410257aeeb2820e8a07a" "60e70079a187df634db25db4bb778255eaace1ef4309e56389459fb9418b4840" "7a2c92b6267b84ae28a396f24dd832e29a164c1942f1f8b3fe500f1c25f8e09d" "1f3304214265481c56341bcee387ef1abb684e4efbccebca0e120be7b1a13589" "9ea054db5cdbd5baa4cda9d373a547435ba88d4e345f4b06f732edbc4f017dc3" "3c67d690c2d801885c06f00c99c7a12c3490ce3b655be3fdc8ecc4fe0ff55706" "bad832ac33fcbce342b4d69431e7393701f0823a3820f6030ccc361edd2a4be4" "978bd4603630ecb1f01793af60beb52cb44734fc14b95c62e7b1a05f89b6c811" "3341f6db5ac17e4174f7488c40676e7f0464f1e88519a59303dc7e7774245bbf" "8874901e0011a7b07e546b65be1726c4cc3f35cf1a60f8805e6cb5bb59ba305c" "dc46381844ec8fcf9607a319aa6b442244d8c7a734a2625dac6a1f63e34bc4a6" "d0ff5ea54497471567ed15eb7279c37aef3465713fb97a50d46d95fe11ab4739" "6f3060ac8300275c990116794e1ba897b6a8af97c51a0cb226a98759752cddcf" "5bff694d9bd3791807c205d8adf96817ee1e572654f6ddc5e1e58b0488369f9d" "c377a5f3548df908d58364ec7a0ee401ee7235e5e475c86952dc8ed7c4345d8e" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" "d921083fbcd13748dd1eb638f66563d564762606f6ea4389ea9328b6f92723b7" "936e5cac238333f251a8d76a2ed96c8191b1e755782c99ea1d7b8c215e66d11e" "8f6537eb6f9d66b060c736f5f680f5c661e0a6b311b86defa293bc5ba104a030" "3bd9497fb8f39c28ab58a9e957152ba2dc41223c23c5520ef10fc7bd6b222384" "1278386c1d30fc24b4248ba69bc5b49d92981c3476de700a074697d777cb0752" "ca3bf8a7c831776c77d09ded89f2f0993dbdd9cb0765d8db061d1ebff806f41c" "60a2ebd7effefeb960f61bc4772afd8b1ae4ea48fae4d732864ab9647c92093a" "5ce9c2d2ea2d789a7e8be2a095b8bc7db2e3b985f38c556439c358298827261c" "4be0cb1919fc15bfb879960ac270da77bf8a5d162fd2b4db7ce8969d188eeb3a" "f8d59d5af01b435272cc3a537f7a239b823b47d9d18b4721f9f474f2a21c5abc" "a234f91f9be6ed40f6ce0e94dce5cea1b9f1ccec2b9ccd42bb71c499867a3fcc" "9f42bccce1e13fa5017eb8718574db099e85358b9f424db78e7318f86d1be08f" "5339210234ec915d7d3fd87bfeb506bfc436ff7277a55516ab1781ec85c57224" "c57e14593c563ed159e8fec3cfd20f57b5820ff19f26ab42cfa46ab01af64959" "04643edb183240f680d5465cf9e9ac3037086f701df09ce5d9183e6c69e73a7e" "65f7173faa84a97044d743d4bab115a6ab52bc6e6dc47612e31e4dbc39ebb1ae" "446c73cdfb49f1dab4c322e51ac00a536fb0e3cb7e6809b9f4616e0858012e92" "fe0a47cc3952fede574527a1c28ddf3a1af381fc1fb5843ca60d22e4c841011a" "246a51f19b632c27d7071877ea99805d4f8131b0ff7acb8a607d4fd1c101e163" "ea0c5df0f067d2e3c0f048c1f8795af7b873f5014837feb0a7c8317f34417b04" "65510ff6bb3cddeb9fcdc61770abcb8cbf8a15185a0b268f77c6b515650a625b" "75d4ccc5e912b93f722e57cca3ca1a15e079032cd69fd9bc67268b4c85639663" "1177fe4645eb8db34ee151ce45518e47cc4595c3e72c55dc07df03ab353ad132" "764777857ef24b4ef1041be725960172ac40964b9f23a75894a578759ba6652f" "b1cbf9910beb0e3655a779d1d4db5b4892a9e9968c7166be2c3f4c6574055fa8" "f5e56ac232ff858afb08294fc3a519652ce8a165272e3c65165c42d6fe0262a0" "91b1b8ec7d5ff7c11b5dce20423e646f2322dbff8decb3f13dc5c19784317a58" "d24e10524bb50385f7631400950ba488fa45560afcadd21e6e03c2f5d0fad194" "c582c1d99904ddc0677f87ba7eb6596cf9321a7e6233857dc4bd6ae587893194" "f07eb9c760be41f36d2971b205d0ec0e1bec9d84ba79e3bc31f26efe724a14f6" "2611d548a133727b1a956c4fa262935e993662a0aaa25d9532b04ab8f556a25b" "72cc9ae08503b8e977801c6d6ec17043b55313cda34bcf0e6921f2f04cf2da56" "5e1d1564b6a2435a2054aa345e81c89539a72c4cad8536cfe02583e0b7d5e2fa" "6cfe5b2f818c7b52723f3e121d1157cf9d95ed8923dbc1b47f392da80ef7495d" "d2622a2a2966905a5237b54f35996ca6fda2f79a9253d44793cfe31079e3c92b" "501caa208affa1145ccbb4b74b6cd66c3091e41c5bb66c677feda9def5eab19c" "fe6330ecf168de137bb5eddbf9faae1ec123787b5489c14fa5fa627de1d9f82b" "71b172ea4aad108801421cc5251edb6c792f3adbaecfa1c52e94e3d99634dee7" "30fe7e72186c728bd7c3e1b8d67bc10b846119c45a0f35c972ed427c45bacc19" "71efabb175ea1cf5c9768f10dad62bb2606f41d110152f4ace675325d28df8bd" default)))
 '(default-input-method "russian-computer")
 '(fci-rule-character-color "#452E2E")
 '(fci-rule-color "#383838")
 '(foreground-color "#839496")
 '(frame-brackground-mode (quote dark))
 '(fringe-mode 6 nil (fringe))
 '(global-auto-complete-mode t)
 '(global-auto-revert-mode t)
 '(global-font-lock-mode t)
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-tail-colors (quote (("#073642" . 0) ("#546E00" . 20) ("#00736F" . 30) ("#00629D" . 50) ("#7B6000" . 60) ("#8B2C02" . 70) ("#93115C" . 85) ("#073642" . 100))))
 '(history-length 1000)
 '(ido-enable-flex-matching t)
 '(ido-mode (quote buffer) nil (ido))
 '(inferior-js-program-command "/usr/bin/js")
 '(inhibit-startup-screen t)
 '(iswitchb-mode t)
 '(latex-run-command "pdflatex")
 '(linum-format " %7d ")
 '(main-line-color1 "#191919")
 '(main-line-color2 "#111111")
 '(main-line-separator-style (quote chamfer))
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
 '(x-select-enable-clipboard nil)
 '(x-select-enable-primary t))

;; (set-frame-parameter (selected-frame) 'font "DejaVu Sans Mono-13")
;; (add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-13"))


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
(add-to-list 'load-path "~/.emacs.d/plugins/evil-numbers")
(require 'evil-numbers)
(global-set-key (kbd "s-+") 'evil-numbers/inc-at-pt)
(global-set-key (kbd "s--") 'evil-numbers/dec-at-pt)
(add-to-list 'load-path "~/.emacs.d/plugins/evil-surround")
(require 'surround)
(global-surround-mode t)

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

;; gpicker and supermegadoc
(require 'gpicker)
(add-to-list 'load-path "~/.emacs.d/plugins/supermegadoc")
(require 'supermegadoc)
(setq *supermegadoc-browse-url-function* 'browse-url)
(setq *gpicker-project-dir* "/home/me/p/work/xv_web3")
(defun gpicker-set-root-and-find-file ()
  (interactive)
  (unless *gpicker-project-dir*
    (call-interactively 'gpicker-visit-project))
  (gpicker-find-file))
(global-set-key (kbd "<f6>") 'gpicker-set-root-and-find-file)
(global-set-key (kbd "C-<f6>") 'gpicker-visit-project)
(global-set-key (kbd "<f7>") 'gpicker-imenu)
(global-set-key (kbd "<f8>") 'gpicker-goto-tag)
(global-set-key (kbd "<f9>") 'supermegadoc-ri)

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

;; ;; auto complete
;; (add-to-list 'load-path "~/.emacs.d/plugins/auto-complete/lib/popup")
;; (require 'popup)
;; (add-to-list 'load-path "~/.emacs.d/plugins/auto-complete")
;; (setq ac-dictionary-directories '())
;; (add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/auto-complete/dict")
;; (require 'auto-complete-config)
;; (ac-config-default)
;; (define-key ac-completing-map "\t" 'ac-complete)
;; (define-key ac-completing-map "\r" nil)

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
(add-to-list 'load-path "~/.emacs.d/plugins/ruby")
(autoload 'ruby-mode "ruby-mode" "Major mode for Ruby files" t)
(add-to-list 'auto-mode-alist '("Capfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

(global-company-mode)
(push 'company-robe company-backends)
(add-hook 'ruby-mode-hook 'robe-mode)

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
;; (add-to-list 'load-path "~/.emacs.d/plugins/emacs-rails")
;; (require 'rails)

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

;; ruby-debug
(add-to-list 'load-path "~/.emacs.d/plugins/ruby-debug")
(require 'rdebug)

;; YARI
(add-to-list 'load-path "~/.emacs.d/plugins/yari.el")
(require 'yari)

;; cperl mode by default
(defalias 'perl-mode 'cperl-mode)

(add-to-list 'load-path "~/.emacs.d/plugins/minimap")
(require 'minimap)

;; rainbow-mode
(add-to-list 'load-path "~/.emacs.d/plugins/rainbow")
(require 'rainbow-mode)

(global-rainbow-delimiters-mode)

;; show/hide menubar
(global-set-key (kbd "C-c m") '(lambda ()
                                 (interactive)
                                 (toggle-menu-bar-mode-from-frame)
                                 ;; (restore-frame)
                                 ))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
