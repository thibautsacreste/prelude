;;; init.el --- personal configuration entry point.
;;

;;; Commentary:
;;

;;; Code:
(prelude-require-packages '(clj-refactor))

;; Allow typing # symbol on UK keyboard  
(global-set-key (kbd "M-3") '(lambda () (interactive) (insert "#")))

;; move between windows with Shift+arrows
(windmove-default-keybindings)
(setq windmove-wrap-around t)

;; clj-refactor
(require 'clj-refactor)
(add-hook 'clojure-mode-hook (lambda ()
                               (clj-refactor-mode 1)
                               (cljr-add-keybindings-with-prefix "C-c C-m")))

;;; init.el ends here
