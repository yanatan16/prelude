;;; user -- User bindings in prelude

;;; Commentary:

;;; Code:

;;; General
(prelude-require-package 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;;; Misc
(setq prelude-theme 'solarized-dark)
(setq-default indent-tabs-mode nil)
(global-linum-mode 1)
(setq tab-width 2)

(global-set-key [f1] 'shell)

;; Html stuff
(setq sgml-basic-offset 2)

;; Java stuff
(prelude-require-package 'jdee)

;; Clojure stuff
(prelude-require-package 'clojars)

;; Javascript
(require 'user-js)

;; Elm
(prelude-require-package 'elm-mode)

;; Handlebars
(prelude-require-package 'handlebars-mode)

;; Csharp
(prelude-require-package 'csharp-mode)

(provide 'user)
;;; user.el ends here
