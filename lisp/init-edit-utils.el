;; -*- coding: utf-8; lexical-binding: t; -*-


;; tips
;; C-M-N and C-M-P go to ) from ( and so on...
;; C-x tab -> [left/right]/[shift+left/shift+right] indent the region


(delete-selection-mode t)                   ; if nil, when select `abc` then enter x,if will be `abcx` rather than `x`

(electric-pair-mode t)                      ; auto close ()
(push '(?\' . ?\') electric-pair-pairs)
(push '(?" . ?") electric-pair-pairs)
(push '(?` . ?`) electric-pair-pairs)

(show-paren-mode t)                         ; highlight ()
(column-number-mode t)
(global-hl-line-mode t)

;; https://www.emacswiki.org/emacs/TruncateLines
(set-default 'truncate-lines t)
(global-set-key "\C-c$" 'toggle-truncate-lines)
;; Horizontal scrolling mouse events should actually scroll left and right.
(global-set-key (kbd "<mouse-6>") (lambda () (interactive)
                                    (if truncate-lines (scroll-right 1))))
(global-set-key (kbd "<mouse-7>") (lambda () (interactive)
				                    (if truncate-lines (scroll-left 1))))

(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

(setq show-paren-when-point-inside-paren t) ; todo this don't work
;; (setq show-paren-style 'expression)      ; will highlight block with paren
(setq-default tab-width 4)  
(setq-default indent-tabs-mode nil)

(defun newline-at-end-of-line ()
  ;; shift+return
  (interactive)
  (move-end-of-line 1)
  (newline-and-indent))
(global-set-key (kbd "S-<return>") 'newline-at-end-of-line)

(use-package goto-chg
  ;; goto-chg: Goto the point of the most recent edit in the buffer.
  :ensure t
  :defer t)
(global-set-key (kbd "C-,") 'goto-last-change)
(global-set-key (kbd "C-.") 'goto-last-change-reverse)

;; scroll
(global-unset-key (kbd "C-9"))
(global-unset-key (kbd "C-0"))
(global-set-key (kbd "C-0") (lambda () (interactive) (next-line 2)))
(global-set-key (kbd "C-9") (lambda () (interactive) (previous-line 2)))
(global-set-key (kbd "C-(") (lambda () (interactive) (scroll-down-line 2)))
(global-set-key (kbd "C-)") (lambda () (interactive) (scroll-up-line 2)))
(global-set-key (kbd "C-*") (lambda () (interactive) (scroll-left 1)))
(global-set-key (kbd "C-&") (lambda () (interactive) (scroll-right 1)))
(global-set-key (kbd "C-}") (lambda () (interactive) (scroll-left)))
(global-set-key (kbd "C-{") (lambda () (interactive) (scroll-right)))



(use-package move-text
  :ensure t
  :config
  (global-set-key (kbd "M-P") 'move-text-up)
  (global-set-key (kbd "M-N") 'move-text-down))


(provide 'init-edit-utils)
