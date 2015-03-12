;;; editorconfig-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "editorconfig" "editorconfig.el" (21761 39664
;;;;;;  935707 488000))
;;; Generated autoloads from editorconfig.el

(autoload 'edconf-find-file-hook "editorconfig" "\


\(fn)" nil nil)

(add-hook 'find-file-hook 'edconf-find-file-hook)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; editorconfig-autoloads.el ends here
