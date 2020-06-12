;; -*- coding: utf-8; lexical-binding: t; -*-


;; https://github.com/lassik/emacs-format-all-the-code/tree/master
;; https://github.com/psf/black
;; https://github.com/prettier/prettier
(use-package format-all
  :ensure t
  :defer t)

(global-set-key (kbd "C-c C-f") 'format-all-buffer)


(provide 'init-format)
