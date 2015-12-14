;;; user -- User bindings in prelude

;;; Commentary:

;;; Code:
(setq prelude-theme 'solarized-dark)
(setq-default indent-tabs-mode nil)
(global-linum-mode 1)
(setq tab-width 2)
(setq js-indent-level 2)
(setq js2-strict-missing-semi-warning nil)

(global-set-key [f1] 'shell)

;; Java stuff
(prelude-require-package 'jdee)

(provide 'user)
;;; user.el ends here
