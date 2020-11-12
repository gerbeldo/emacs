(require 'package)
(add-to-list 'package-archives
        '("melpa" . "https://melpa.org/packages/")
        '("elpy" . "https://jorgenschaefer.github.io/packages/"))

(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)


(package-initialize)

;; copies env variables from shell, so they are used when starting emacs
;; from GUI (on macOS and linux)
;;(when (memq window-system '(mac ns x))
;;  (exec-path-from-shell-initialize))

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(setq use-package-verbose t)

(defconst private-dir  (expand-file-name "private" user-emacs-directory))
(defconst temp-dir (format "%s/cache" private-dir)
  "Hostname-based elisp temp directories")

;; Core settings
;; UTF-8 please
(set-charset-priority 'unicode)
(setq locale-coding-system   'utf-8)   ; pretty
(set-terminal-coding-system  'utf-8)   ; pretty
(set-keyboard-coding-system  'utf-8)   ; pretty
(set-selection-coding-system 'utf-8)   ; please
(prefer-coding-system        'utf-8)   ; with sugar on top
(setq default-process-coding-system '(utf-8-unix . utf-8-unix))

;; Emacs customizations
(setq confirm-kill-emacs                  'y-or-n-p
      confirm-nonexistent-file-or-buffer  t
      save-interprogram-paste-before-kill t
      mouse-yank-at-point                 t
      require-final-newline               t
      visible-bell                        nil
      ring-bell-function                  'ignore
      custom-file                         "~/.emacs.d/.custom.el"
      ;; http://ergoemacs.org/emacs/emacs_stop_cursor_enter_prompt.html
      minibuffer-prompt-properties
      '(read-only t point-entered minibuffer-avoid-prompt face minibuffer-prompt)

      ;; Disable non selected window highlight
      cursor-in-non-selected-windows     nil
      highlight-nonselected-windows      nil
      ;; PATH
      exec-path                          (append exec-path '("/usr/local/bin/"))
      indent-tabs-mode                   nil
      inhibit-startup-message            t
      fringes-outside-margins            t
      x-select-enable-clipboard          t
      use-package-always-ensure          t)

;; Bookmarks
(setq
 ;; persistent bookmarks
 bookmark-save-flag                      t
 bookmark-default-file              (concat temp-dir "/bookmarks"))

;; Backups enabled, use nil to disable
(setq
 history-length                     1000
 backup-inhibited                   nil
 make-backup-files                  nil
 auto-save-default                  t
 auto-save-list-file-name           (concat temp-dir "/autosave")
 make-backup-files                  t
 create-lockfiles                   nil
 backup-directory-alist            `(("." . ,(concat user-emacs-directory "backups")))
 ;;auto-save-file-name-transforms    `((".*" ,(concat temp-dir "/auto-save-list/") t)))
)
(fset 'yes-or-no-p 'y-or-n-p)
(global-auto-revert-mode t)

;; Disable toolbar & menubar
;;(menu-bar-mode -1)
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (  fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(show-paren-mode 1)

;; use right option key as accent modifier
(setq ns-right-option-modifier nil)

;; Delete trailing whitespace before save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(setq initial-frame-alist
      '((top . 1) (left . 1) (width . 120) (height . 60)))


(load custom-file)

;; new emacs line numbering
(global-display-line-numbers-mode 1)
(add-hook 'dired-sidebar-mode-hook (lambda () (display-line-numbers-mode -1)))


;; make $HOME the default directory
(setq default-directory "~/")

;; meaningful names for buffers with the same name
;; from prelude
;; https://github.com/bbatsov/prelude
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t)    ; rename after killing uniquified
(setq uniquify-ignore-buffers-re "^\\*") ; don't muck with special buffers

(provide 'base)
;;; base ends here
