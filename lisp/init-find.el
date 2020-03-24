;; -*- coding: utf-8; lexical-binding: t; -*-


;; TODO key太复杂，考虑优化

(global-set-key (kbd "C-c f g g") 'find-grep)
(global-set-key (kbd "C-c f g d") 'find-grep-dired)


;; ag config
(use-package ag
  :ensure t
  :defer t
  :init
  (setq ag-highlight-search t)
  (when *win*
    (setq ag-executable "C:/Wherever/I/Installed/Ag/ag.exe"))
  (setq ag-reuse-buffers 't)  ;; 所有的ag搜索使用同一buffer

  (global-set-key (kbd "C-c f a a") 'ag)
  (global-set-key (kbd "C-c f a f") 'ag-files)
  (global-set-key (kbd "C-c f a r") 'ag-regexp)
  (global-set-key (kbd "C-c f a p a") 'ag-project)
  (global-set-key (kbd "C-c f a p f") 'ag-project-files)
  (global-set-key (kbd "C-c f a p r") 'ag-project-regexp)
  (global-set-key (kbd "C-c f a p d") 'ag-project-dired)
  (global-set-key (kbd "C-c f a p D") 'ag-project-dired-regexp)

  (global-set-key (kbd "C-c f a d") 'ag-dired)
  (global-set-key (kbd "C-c f a D") 'ag-dired-regexp))


(provide 'init-find)
