;;; package --- python configs
;;; Commentary:
;;; Contains my python configs

;;; Code:

;; (use-package python
;;   :mode ("\\.py" . python-mode)
;;   :config
;;   (use-package elpy
;;     :init
;;     (add-to-list 'auto-mode-alist '("\\.py$" . python-mode))
;;     (elpy-enable)
;;     :config
;;     (setq python-shell-interpreter "python3")
;;     (setq elpy-rpc-backend "jedi")
;;     ;; (add-hook 'python-mode-hook 'py-autopep8-enable-on-save)
;;     ;; flycheck-python-flake8-executable "/usr/local/bin/flake8"
;;     :bind (:map elpy-mode-map
;; 	      ("M-." . elpy-goto-definition)
;; 	      ("M-," . pop-tag-mark))))

;; (use-package elpy
;;   :ensure t
;;   :defer 2
;;   :config
;;   (progn
;;     ;; Use Flycheck instead of Flymake
;;     (when (require 'flycheck nil t)
;;       (remove-hook 'elpy-modules 'elpy-module-flymake)
;;       (remove-hook 'elpy-modules 'elpy-module-yasnippet)
;;       (remove-hook 'elpy-mode-hook 'elpy-module-highlight-indentation)
;;       (add-hook 'elpy-mode-hook 'flycheck-mode))
;;     (elpy-enable)
;;     ;; jedi is great
;;     (setq python-shell-interpreter "python3")
;;     (setq elpy-rpc-backend "jedi")
;;     (setq elpy-rpc-python-command "python3")))


;; (use-package elpy
;;   :ensure t
;;   :defer 2
;;   :init
;;   (elpy-enable)
;;   :config
;;   (setq python-shell-interpreter "ipython"
;; 	python-shell-interpreter-args "-i --simple-prompt")
;;   (setq elpy-rpc-backend "jedi")
;;   (setq elpy-rpc-python-command "ipython")
;;   (setq elpy-company-add-completion-from-shell t))



;; (use-package pip-requirements
;;   :config
;;   (add-hook 'pip-requirements-mode-hook #'pip-requirements-auto-complete-setup))

;; (use-package py-autopep8)


;; (use-package pyenv-mode
;;   :init
;;   (add-to-list 'exec-path "~/.pyenv/shims")
;;   (setenv "WORKON_HOME" "~/.pyenv/versions/")
;;   :config
;;   (pyenv-mode)
;;   :bind
;;   ("C-x p e" . pyenv-activate-current-project))

;; (defun pyenv-init()
;;   (setq global-pyenv (replace-regexp-in-string "\n" "" (shell-command-to-string "pyenv global")))
;;   (message (concat "Setting pyenv version to " global-pyenv))
;;   (pyenv-mode-set global-pyenv)
;;   (defvar pyenv-current-version nil global-pyenv))

;; (defun pyenv-activate-current-project ()
;;   "Automatically activates pyenv version if .python-version file exists."
;;   (interactive)
;;   (f-traverse-upwards
;;    (lambda (path)
;;      (message path)
;;      (let ((pyenv-version-path (f-expand ".python-version" path)))
;;        (if (f-exists? pyenv-version-path)
;;           (progn
;;             (setq pyenv-current-version (s-trim (f-read-text pyenv-version-path 'utf-8)))
;;             (pyenv-mode-set pyenv-current-version)
;;             (pyvenv-workon pyenv-current-version)
;;             (message (concat "Setting virtualenv to " pyenv-current-version))))))))

;; (add-hook 'after-init-hook 'pyenv-init)
;; (add-hook 'projectile-after-switch-project-hook 'pyenv-activate-current-project)


;; (use-package ein
;;   :ensure t
;;   :init (require 'ein)
;;   (require 'ein-notebook)
;;   (require 'ein-subpackages))

;; (use-package conda
;;   :ensure t
;;   :init (require 'conda)
;;   :config (setq conda-anaconda-home "/home/german/apps/anaconda3/"))

;; :commands ein:notebooklist-open
;; :init
;; (progn
;;   (with-eval-after-load 'ein-notebooklist
;;     ;; removing keybindings
;;     (define-key ein:notebook-mode-map (kbd "M-p") nil)
;;     (define-key ein:notebook-mode-map (kbd "<M-up>") nil)
;;     (define-key ein:notebook-mode-map (kbd "<M-down>") nil)
;;     ;; changing keybinding
;;     (define-key ein:notebook-mode-map (kbd "C-s") 'ein:notebook-save-notebook-command)
;;     (define-key ein:notebook-mode-map (kbd "<M-S-up>") 'ein:worksheet-move-cell-up)
;;     (define-key ein:notebook-mode-map (kbd "<M-S-down>") 'ein:worksheet-move-cell-down))))


(use-package elpy
  :ensure t
  :defer 2
  :init
  (add-to-list 'auto-mode-alist '("\\.py$" . python-mode))
  (elpy-enable)
  :config
  (setq python-shell-interpreter "ipython"
	python-shell-interpreter-args "-i --simple-prompt")
  (setq elpy-rpc-backend "jedi")
  (setq elpy-rpc-python-command "python"))


(provide 'lang-python)
;;; base-python.el ends here
