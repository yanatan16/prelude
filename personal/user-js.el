;;; user-js -- JS Configurations

;;; Commentary:
;;; Alternative to prelude-js for using js3-mode

;;; Code:

(require 'prelude-programming)
(prelude-require-packages '(js2-mode json-mode rjsx-mode))

(setq js2-strict-missing-semi-warning nil)
(require 'js2-mode)

(add-to-list 'auto-mode-alist '("\\.js\\'"    . rjsx-mode))
(add-to-list 'auto-mode-alist '("\\.json\\'"  . json-mode))
(add-to-list 'auto-mode-alist '("\\.pac\\'"   . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

(eval-after-load 'js2-mode
  '(progn
     (defun prelude-js-mode-defaults ()
       ;; electric-layout-mode doesn't play nice with smartparens
       (setq-local electric-layout-rules '((?\; . after)))
       (setq mode-name "JS2")
       (js2-imenu-extras-mode +1))

     (setq prelude-js-mode-hook 'prelude-js-mode-defaults)
     (setq js2-basic-offset 2)

     (add-hook 'js2-mode-hook (lambda () (run-hooks 'prelude-js-mode-hook)))))

(require 'rjsx-mode)
(eval-after-load 'rjsx-mode
  '(progn
     (defun prelude-jsx-mode-defaults ()
       (setq js2-basic-offset 2))))


(provide 'user-js)
;;; user-js.el ends here
