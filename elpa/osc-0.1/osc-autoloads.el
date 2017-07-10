;;; osc-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "osc" "osc.el" (22882 57581 47616 228000))
;;; Generated autoloads from osc.el

(autoload 'osc-make-client "osc" "\
Create an OSC client process which talks to HOST and PORT.

\(fn HOST PORT)" nil nil)

(autoload 'osc-send-message "osc" "\
Send an OSC message from CLIENT to the specified PATH with ARGS.

\(fn CLIENT PATH &rest ARGS)" nil nil)

(autoload 'osc-make-server "osc" "\
Create an OSC server which listens on HOST and PORT.
DEFAULT-HANDLER is a function with arguments (path &rest args) which is called
when a new OSC message arrives.  See `osc-server-set-handler' for more
fine grained control.
A process object is returned which can be dicarded with `delete-process'.

\(fn HOST PORT DEFAULT-HANDLER)" nil nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; osc-autoloads.el ends here
