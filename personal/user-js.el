;;; user-js -- JS Configurations

;;; Commentary:
;;; Alternative to prelude-js for using js3-mode

;;; Code:

;;; Require Packages
;; (custom-set-variables
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(js3-lazy-commas t)
;;  '(js3-lazy-operators t)
;;  '(js3-expr-indent-offset 2)
;;  '(js3-paren-indent-offset 2)
;;  '(js3-square-indent-offset 2)
;;  '(js3-curly-indent-offset 2))

(prelude-require-packages '(js3-mode json-mode))

(require 'js3-mode)

(add-to-list 'auto-mode-alist '("\\.js\\'"    . js3-mode))
(add-to-list 'auto-mode-alist '("\\.pac\\'"   . js3-mode))
(add-to-list 'interpreter-mode-alist '("node" . js3-mode))

(provide 'user-js)
;;; user-js.el ends here
