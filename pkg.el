;; basic

(require-package 'f)
(require-package 's)
(require-package 'dash)
(require-package 'dash-functional)
(require-package 'ht)
(require-package 'pfuture)
(require-package 'spinner)
(require-package 'ert-runner)
(require-package 'espuds)
(require-package 'ecukes)
(require-package 'undercover)
(require-package 'deferred)
(require-package 'seq)
(require-package 'persp-mode)
(require-package 'with-editor)
(require-package 'buttercup)
(require-package 'el-mock)

;; all
(require-package 'posframe)
(require-package 'pyvenv)
(require-package 'auto-virtualenv)
(require-package 'yapfify)
(require-package 'rg)
(require-package 'avy)
(require-package 'embrace)
(require-package 'hydra)
(require-package 'posframe)
(require-package 'ivy-posframe)
(require-package 'restclient)
(require-package 'know-your-http-well)
(require-package 'company-restclient)
(require-package 'key-chord)
(require-package 'general)
(require-package 'js2-mode)
(require-package 'tide)
(require-package 'go-mode)
(require-package 'yasnippet)
(require-package 'company-tabnine)
(require-package 'company-flx)
(require-package 'company-fuzzy)
(require-package 'company-prescient)
(require-package 'ivy-hydra)
(require-package 'ivy-prescient)
(require-package 'diminish)
(require-package 'undo-tree)
(require-package 'real-auto-save)
(require-package 'which-key)
(require-package 'imenu-list)
(require-package 'flycheck)
(require-package 'diff-hl)
(require-package 'symbol-overlay)
(require-package 'anzu)
(require-package 'multiple-cursors)
(require-package 'expand-region)
(require-package 'browse-kill-ring)
(require-package 'magit)
(require-package 'rainbow-delimiters)
(require-package 'move-text)
(require-package 'goto-chg)
(require-package 'recentf)
(require-package 'dired-subtree)
(require-package 'highlight-indent-guides)
(require-package 'wgrep)
(require-package 'smex)
(require-package 'exec-path-from-shell)
(require-package 'prescient)
(require-package 'golden-ratio)
(require-package 'transwin)
(require-package 'easy-kill)
(require-package 'string-inflection)
(require-package 'evil)
(require-package 'general)
(require-package 'key-chord)
(require-package 'goto-chg)
(require-package 'undo-tree)
(require-package 'counsel-gtags)
(require-package 'counsel-etags)

;; git repo
(push (expand-file-name "repo/swiper" user-emacs-directory) load-path)
(push (expand-file-name "repo/company-mode" user-emacs-directory) load-path)
(push (expand-file-name "repo/projectile" user-emacs-directory) load-path)
(push (expand-file-name "repo/counsel-projectile" user-emacs-directory) load-path)
(push (expand-file-name "repo/treemacs/src/elisp" user-emacs-directory) load-path)
(push (expand-file-name "repo/treemacs/src/extra" user-emacs-directory) load-path)
(push (expand-file-name "repo/treemacs/src/script" user-emacs-directory) load-path)
(push (expand-file-name "repo/lsp-mode" user-emacs-directory) load-path)
(push (expand-file-name "repo/lsp-mode/clients" user-emacs-directory) load-path)
(push (expand-file-name "repo/lsp-python-ms" user-emacs-directory) load-path)
