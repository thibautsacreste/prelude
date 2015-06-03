;;; init.el --- personal configuration entry point.
;;

;;; Commentary:
;;

;;; Code:
(prelude-require-packages '(monokai-theme clj-refactor))

;; move between windows with Shift+arrows
(windmove-default-keybindings)
(setq windmove-wrap-around t)

;; clj-refactor
(require 'clj-refactor)
(add-hook 'clojure-mode-hook (lambda ()
                               (clj-refactor-mode 1)
                               (cljr-add-keybindings-with-prefix "C-c C-m")))

;;; init.el ends here
