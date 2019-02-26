;; -*- coding: utf-8; lexical-binding: t; -*-

;; copy from https://github.com/purcell/emacs.d/blob/master/lisp/init-osx-keys.el
;; and just leave what i need

(when *is-a-mac*
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier 'none)
  global-set-key (kbd "M-ƒ") 'toggle-frame-maximized
  )


(provide 'init-mac)
