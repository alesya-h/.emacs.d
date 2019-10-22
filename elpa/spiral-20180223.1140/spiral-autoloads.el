;;; spiral-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "parseclj" "parseclj.el" (0 0 0 0))
;;; Generated autoloads from parseclj.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "parseclj" '("parseclj-")))

;;;***

;;;### (autoloads nil "parseclj-ast" "parseclj-ast.el" (0 0 0 0))
;;; Generated autoloads from parseclj-ast.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "parseclj-ast" '("parseclj-ast-")))

;;;***

;;;### (autoloads nil "parseclj-lex" "parseclj-lex.el" (0 0 0 0))
;;; Generated autoloads from parseclj-lex.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "parseclj-lex" '("parseclj-lex-")))

;;;***

;;;### (autoloads nil "parseclj-parser" "parseclj-parser.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from parseclj-parser.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "parseclj-parser" '("parseclj-")))

;;;***

;;;### (autoloads nil "parseedn" "parseedn.el" (0 0 0 0))
;;; Generated autoloads from parseedn.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "parseedn" '("parseedn-")))

;;;***

;;;### (autoloads nil "spiral" "spiral.el" (0 0 0 0))
;;; Generated autoloads from spiral.el

(autoload 'spiral-connect "spiral" "\
Ask user for a Clojure Socket REPL coordinates and connect to it.
Use a list of suitable connections to aid the user into selecting and
connecting to an existing one.  Before connecting, this command will try to
infer the actual Clojure project directory from the buffer's file name, if
any.  In case it's possible to infer a project directory, this command
automatically connects all other buffers for the same project to the new
selected connection, even if they were already connected to a different
Socket REPL.

If the current buffer is already connected, this command will only warn the
user that a connection already exists, and then will exit.  When called
with JUST-ASK, this command will ask the user for a new connection either
way.

\(fn &optional JUST-ASK)" t nil)

(autoload 'spiral-connect-to "spiral" "\
Same as `spiral-connect' but force a prompt so the user can decide where to connect.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "spiral" '("spiral-")))

;;;***

;;;### (autoloads nil "spiral-ast" "spiral-ast.el" (0 0 0 0))
;;; Generated autoloads from spiral-ast.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "spiral-ast" '("spiral-")))

;;;***

;;;### (autoloads nil "spiral-attachment" "spiral-attachment.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from spiral-attachment.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "spiral-attachment" '("spiral-attachment-")))

;;;***

;;;### (autoloads nil "spiral-button" "spiral-button.el" (0 0 0 0))
;;; Generated autoloads from spiral-button.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "spiral-button" '("spiral-button-")))

;;;***

;;;### (autoloads nil "spiral-loop" "spiral-loop.el" (0 0 0 0))
;;; Generated autoloads from spiral-loop.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "spiral-loop" '("spiral-")))

;;;***

;;;### (autoloads nil "spiral-mode" "spiral-mode.el" (0 0 0 0))
;;; Generated autoloads from spiral-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "spiral-mode" '("spiral-" "with-current-project")))

;;;***

;;;### (autoloads nil "spiral-overlay" "spiral-overlay.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from spiral-overlay.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "spiral-overlay" '("spiral-")))

;;;***

;;;### (autoloads nil "spiral-project" "spiral-project.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from spiral-project.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "spiral-project" '("spiral-" "with-process-buffer")))

;;;***

;;;### (autoloads nil "spiral-repl" "spiral-repl.el" (0 0 0 0))
;;; Generated autoloads from spiral-repl.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "spiral-repl" '("spiral-re" "with-current-repl")))

;;;***

;;;### (autoloads nil "spiral-socket" "spiral-socket.el" (0 0 0 0))
;;; Generated autoloads from spiral-socket.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "spiral-socket" '("spiral-")))

;;;***

;;;### (autoloads nil "spiral-stacktrace" "spiral-stacktrace.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from spiral-stacktrace.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "spiral-stacktrace" '("spiral-stacktrace-")))

;;;***

;;;### (autoloads nil "spiral-util" "spiral-util.el" (0 0 0 0))
;;; Generated autoloads from spiral-util.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "spiral-util" '("spiral-" "comment")))

;;;***

;;;### (autoloads nil nil ("spiral-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; spiral-autoloads.el ends here
