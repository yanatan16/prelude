;;; user -- User bindings in prelude

;;; Commentary:

;;; Code:

;;; Start server
;(start-server)

;;; General
(prelude-require-package 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;;; Font
(set-frame-font "-*-Source Code Pro-normal-normal-normal-*-13-*-*-*-m-0-iso10646-1" nil t)

;;; Misc
(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)
(global-linum-mode 1)
(setq tab-width 2)

(global-set-key [f1] 'shell)

;; Python
(setq python-indent-offset 4)
(add-hook 'python-mode-hook
        (lambda ()
                (setq indent-tabs-mode nil)
                (setq python-indent-offset 4)))

;; Html stuff
(defun my-web-mode-hook ()
        "Hooks for Web mode."
        (setq web-mode-markup-indent-offset 2)
        (setq sgml-basic-offset 2)
        )
(add-hook 'web-mode-hook  'my-web-mode-hook)

;; Java stuff
(prelude-require-package 'jdee)

;; Clojure stuff
(prelude-require-package 'clojars)
(add-hook 'clojure-mode-hook (lambda () (setq indent-tabs-mode nil)))

;; yaml
(add-hook 'yaml-mode-hook
        (lambda ()
                (setq indent-tabs-mode nil)
                (setq yaml-indent-offset 2)))

;; el
(add-hook 'el-mode-hook
        (lambda ()
                (setq indent-tabs-mode nil)
                (setq lisp-body-indent 2)))

;; Javascript
(setq js-indent-level 2)

;; Elm
(prelude-require-package 'elm-mode)

;; Handlebars
(prelude-require-package 'handlebars-mode)

;; Csharp
(prelude-require-package 'csharp-mode)

;; Salt
(add-to-list 'auto-mode-alist '("\\.sls$" . yaml-mode))

;; Markdown
(prelude-require-package 'markdown-mode)
(add-to-list 'auto-mode-alist '("\\.(md|markdown)$" . markdown-mode))
(add-hook 'markdown-mode-hook
        (lambda ()
                (whitespace-mode -1)
                (setq indent-tabs-mode nil)))

;; json
(add-hook 'json-mode-hook
        (lambda ()
                (setq js-indent-level 2)
                (setq indent-tabs-mode nil)))
(add-hook 'js-mode-hook
        (lambda ()
                (setq js-indent-level 2)
		(setq sgml-basic-offset 2)
                (setq indent-tabs-mode nil)))
(add-hook 'js2-mode-hook
        (lambda ()
                (setq js-indent-level 2)
                (setq js2-indent-level 2)
		(setq sgml-basic-offset 2)
		(setq indent-tabs-mode nil)))

;; Groovy
(prelude-require-package 'groovy-mode)
(add-hook 'groovy-mode-hook
        (lambda ()
                (setq groovy-indent-offset 2)
                (setq indent-tabs-mode nil)))

;; Org Mode
(prelude-require-package 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(defun refresh-agenda-file-list ()
        (interactive)
        (setq org-agenda-files
                (directory-files-recursively "~/dev/notes" ".*\.org")))
(refresh-agenda-file-list)
(add-hook 'org-mode-hook
        (lambda ()
                (whitespace-mode -1)))

(add-hook 'css-mode-hook
        (lambda ()
                (setq indent-tabs-mode nil)
                (setq css-indent-offset 4)))

;; Dockerfile mode
;; (prelude-require-package 'dockerfile-mode)
;; (add-hook 'dockerfile-mode-hook
;; 	(lambda ()
;; 		(setq indent-tabs-mode nil)
;; 		(setq tab-width 1)))

(global-set-key (kbd "C-!") 'magit-commit)
(global-set-key (kbd "C-@") 'magit-push)

(provide 'user)
;;; user.el ends here
