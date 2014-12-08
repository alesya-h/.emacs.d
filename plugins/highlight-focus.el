;;; highlight-focus.el --- highlight the active buffer

;; Author: Amit J Patel <amitp@cs.stanford.edu>
;; Contribution: Ales Guzik <me@aguzik.net>
;;; Commentary:
;;
;; I find that I'm not good at tracking when focus changes across
;; apps, windows, and within a window. As much as possible, I try to
;; have all my applications somehow draw attention to what has
;; focus. In X11 I marked the focus in red. In Firefox I marked the
;; text fields in yellow. This Emacs package highlights the active
;; buffer. It's inspired by an earlier package I had written for
;; XEmacs, which changes the window color and modeline color for the
;; current window.
;;
;;; History:
;;
;; 2014-05-08: Calculate background color on-the-fly. Use focus hooks.
;; 2013-05-10: Rewritten to use the Emacs 23 "remap faces" feature.
;; 2007-04-16: Initial version, temporarily highlighting the active buffer

;;; Code:

(require 'face-remap)
(require 'color)
(defvar highlight-focus:last-buffer nil)
(defvar highlight-focus:cookie nil)
(defun highlight-focus:background ()
  (funcall (if (eql 'dark (frame-parameter nil 'background-mode))
               #'color-lighten-name
               #'color-darken-name)
    (frame-parameter nil 'background-color) 10))

(defun highlight-focus:check ()
  "Check if focus has changed, and if so, update remapping."
  (unless (eq highlight-focus:last-buffer (current-buffer))
    (when (and highlight-focus:last-buffer highlight-focus:cookie)
      (with-current-buffer highlight-focus:last-buffer
        (face-remap-remove-relative highlight-focus:cookie)))
    (setq highlight-focus:last-buffer (current-buffer)
          highlight-focus:cookie
          (face-remap-add-relative 'default :background
                                   (highlight-focus:background)))))

(defadvice other-window (after highlight-focus activate)
  (highlight-focus:check))
(defadvice select-window (after highlight-focus activate)
  (highlight-focus:check))
(defadvice select-frame (after highlight-focus activate)
  (highlight-focus:check))
(add-hook 'window-configuration-change-hook 'highlight-focus:check)
(add-hook 'focus-in-hook 'highlight-focus:check)
(add-hook 'focus-out-hook 'highlight-focus:check)

(provide 'highlight-focus)

;;; highlight-focus.el ends here
