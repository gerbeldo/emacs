;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; org-mode configuration                                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; set org directory for capture files
(setq org-directory "~/Dropbox/org/capture/")
(setq org-default-notes-file (concat org-directory "/notes.org"))

;; auto fill mode, breaks lines longer than 80 characters

(add-hook 'org-mode-hook 'auto-fill-mode)

;; indent mode

(setq org-startup-indented 1)

;; replace TeX expressions with unicode symbols
(setq org-pretty-entities 1)

;; use {} to enclose sub or superscripts
(setq org-use-sub-superscripts "{}")

;; global keybindings

(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c b") 'org-iswitchb)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c C-l") 'org-insert-link)

(setq org-hide-emphasis-markers t) ;; hides markup characters for semi-WYSIWYG

;; size of inline images to 300px
(setq org-image-actual-width 300)

;; default org links path to absolute, using "~" for HOME. Be careful on WINDOWS!
(setq org-link-file-path-type 'absolute)

;; use ivy for org-goto, bound to C-c C-j, to jump to headings
(setq org-goto-interface 'outline-path-completion)
(setq org-outline-path-complete-in-steps nil)

;; System locale to use for formatting time values.
(setq system-time-locale "C")         ; Make sure that the weekdays in the
                                      ; time stamps of your Org mode files and
					; in the agenda appear in English.

;; (setq org-file-apps
;;       '(("\\.tif\\'" . "gwenview %s")
;; 	("\\.jpg\\'" . "gwenview %s")
;; 	("\\.png\\'" . "gwenview %s")
;; 	(auto-mode . emacs)))


;; in macOS, the command line utility open, uses default app to open file
(setq org-file-apps
      '(("\\.tif\\'" . "open %s")
	("\\.jpg\\'" . "open %s")
	("\\.png\\'" . "open %s")
	("\\.jpeg\\'" . "open %s")
	(auto-mode . emacs)))


;; space between headings
(setq org-cycle-separator-lines 1)

;; add time when task is completed
;; (setq org-log-done (quote time))



;; To use with C-c C-t. All of them ask for note (@). C-c C-c for empty note.
(setq org-todo-keywords
      '((sequence "TODO(t@)" "|" "DONE(d@)" "CANCELED(c@)" "WAITING(w@)")))

;; keeps log entries after todo in LOGBOOK drawer, to open with extra TAB
(setq org-log-into-drawer t)

;; order logs in LOGBOOK chronologically (oldest first)
(setq org-log-states-order-reversed nil)

;; treat TODO insertion as state change for logging
(setq org-treat-insert-todo-heading-as-state-change t)

;; SUPER AGENDA
;; todo


;; org cycle hook calls the quoted functions after TAB in heading
;; removed org-cycle-hide-drawers
(setq org-cycle-hook
   (quote
    (org-cycle-hide-archived-subtrees org-cycle-show-empty-lines org-optimize-window-after-visibility-change)))


;; right align tags in agenda views
(setq org-agenda-tags-column -100)

(provide 'org-config)
;;; org-config ends here
