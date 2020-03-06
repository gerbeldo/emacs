(use-package paradox
  :ensure t
  :config
  (paradox-enable))

(use-package avy
  :config
  (setq avy-timeout-seconds '0.2)
  :bind
  ("C-;" . avy-goto-char-timer))

(use-package company
  :ensure t
  :defer 2
  :diminish
  :custom
  (company-begin-commands '(self-insert-command))
  (company-idle-delay .1)
  (company-minimum-prefix-length 2)
  (company-show-numbers t)
  (company-tooltip-align-annotations 't)
  (global-company-mode t))

;; company-box needs emacs 26
;;(use-package company-box
  ;;:ensure t
  ;;:after company
  ;;:diminish
  ;;:hook (company-mode . company-box-mode))

(use-package dashboard
  :config
  (dashboard-setup-startup-hook))

(use-package ediff
  :config
  (setq ediff-window-setup-function 'ediff-setup-windows-plain)
  (setq-default ediff-highlight-all-diffs 'nil)
  (setq ediff-diff-options "-w"))

(use-package exec-path-from-shell
  :config
  ;; Add GOPATH to shell
  (when (memq window-system '(mac ns x))
    (exec-path-from-shell-copy-env "GOPATH")
    (exec-path-from-shell-copy-env "PYTHONPATH")
    (exec-path-from-shell-initialize)))

(use-package expand-region
  :bind
  ("C-=" . er/expand-region))

(use-package flycheck)


(use-package counsel
  :bind
  ("M-x" . counsel-M-x)
  ("C-x C-m" . counsel-M-x)
  ("C-x C-f" . counsel-find-file)
  ("C-x c k" . counsel-yank-pop))

;; (use-package counsel-projectile
;;   :bind
;;   ("C-x v" . counsel-projectile)
;;   ("C-x c p" . counsel-projectile-ag)
;;   :config
;;   (counsel-projectile-on))

(use-package ivy
  :bind
  ("C-x s" . swiper)
  ("C-x C-r" . ivy-resume)
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers nil)
  (define-key read-expression-map (kbd "C-r") 'counsel-expression-history))


(use-package hlinum
  :config
  (hlinum-activate))

(use-package linum
  :config
  (setq linum-format " %3d ")
  (global-linum-mode nil))

(use-package magit
  :config

  (setq magit-completing-read-function 'ivy-completing-read)

  :bind
  ;; Magic
  ("C-x g s" . magit-status)
  ("C-x g x" . magit-checkout)
  ("C-x g c" . magit-commit)
  ("C-x g p" . magit-push)
  ("C-x g u" . magit-pull)
  ("C-x g e" . magit-ediff-resolve)
  ("C-x g r" . magit-rebase-interactive))

(use-package magit-popup)


;; ToDo: have to delete this package
;; (use-package neotree
;;   :config
;;   (setq neo-theme 'arrow
;;         neotree-smart-optn t
;;         neo-window-fixed-size nil)
;;   ;; Disable linum for neotree
;;   (add-hook 'neo-after-create-hook 'disable-neotree-hook))

(use-package dired-sidebar
  :ensure t
  :commands (dired-sidebar-toggle-sidebar))

(use-package org
  :config
  (setq org-directory "~/org-files"
        org-default-notes-file (concat org-directory "/todo.org"))
  :bind
  ("C-c l" . org-store-link)
  ("C-c a" . org-agenda))

;; (use-package org-projectile
;;   :config
;;   (org-projectile-per-project)
;;   (setq org-projectile-per-project-filepath "todo.org"
;; 	org-agenda-files (append org-agenda-files (org-projectile-todo-files))))

(use-package org-bullets
  :config
  (setq org-hide-leading-stars t)
  (add-hook 'org-mode-hook
            (lambda ()
              (org-bullets-mode t))))

(use-package page-break-lines)

;; (use-package projectile
;;   :config
;;   (setq projectile-known-projects-file
;;         (expand-file-name "projectile-bookmarks.eld" temp-dir))

;;   (setq projectile-completion-system 'ivy)

;;   (projectile-global-mode))

(use-package recentf
  :config
  (setq recentf-save-file (recentf-expand-file-name "~/.emacs.d/private/cache/recentf"))
  (recentf-mode 1))

(use-package smartparens)

(use-package smex)

(use-package undo-tree
  :config
  ;; Remember undo history
  (setq
   undo-tree-auto-save-history nil
   undo-tree-history-directory-alist `(("." . ,(concat temp-dir "/undo/"))))
  (global-undo-tree-mode 1))

(use-package which-key
  :config
  (which-key-mode))

(use-package windmove
  :bind
  ("C-x <up>" . windmove-up)
  ("C-x <down>" . windmove-down)
  ("C-x <left>" . windmove-left)
  ("C-x <right>" . windmove-right))

(use-package wgrep)

(use-package yasnippet
  :config
  (yas-global-mode 1))

;; MY PACKAGES

(use-package uniquify
  ;; makes buffer names unique in a sensible way.
  :ensure nil
  :config
  (setq uniquify-buffer-name-style 'forward))


(use-package saveplace
  ;; saves point location in buffers.

  :config
  (setq-default save-place t))


(use-package rainbow-delimiters
  :ensure t
  :config
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
  (add-hook 'ess-mode-hook 'rainbow-delimiters-mode))


(use-package ace-window
  :ensure t
  :bind ("M-o" . ace-window))


(use-package smart-mode-line
  :ensure t
  :config
  (sml/setup))


(use-package multiple-cursors
  :ensure t
  :bind
  ("C-." . mc/mark-next-like-this)
  ("C-<" . mc/mark-previous-like-this)
  ("C->" . mc/unmark-next-like-this)
  ("C-?" . mc/mark-all-like-this)
  ("C-S-<mouse-1>" . mc/add-cursor-on-click)
  ("C-S-SPC" . set-rectangular-region-anchor))

;; (use-package org-super-agenda
;;   :ensure t
;;   :config (org-super-agenda-mode))


(provide 'base-extensions)
