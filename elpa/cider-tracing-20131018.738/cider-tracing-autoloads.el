;;; cider-tracing-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (cider-toggle-trace) "cider-tracing" "cider-tracing.el"
;;;;;;  (21355 25851 873022 24000))
;;; Generated autoloads from cider-tracing.el

(autoload 'cider-toggle-trace "cider-tracing" "\
Toggle tracing for the given QUERY.
Defaults to the symbol at point.  With prefix arg or no symbol at
point, prompts for a var.

\(fn QUERY)" t nil)

(eval-after-load 'clojure-mode '(progn (define-key clojure-mode-map (kbd "C-c M-t") 'cider-toggle-trace)))

;;;***

;;;### (autoloads nil nil ("cider-tracing-pkg.el") (21355 25851 895794
;;;;;;  504000))

;;;***

(provide 'cider-tracing-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; cider-tracing-autoloads.el ends here
