;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; org-mode configuration                                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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


(setq org-file-apps
      '(("\\.tif\\'" . "gwenview %s")
	("\\.jpg\\'" . "gwenview %s")
	("\\.png\\'" . "gwenview %s")
	(auto-mode . emacs)))


(setq org-cycle-separator-lines 1)

(provide 'org-config)
;;; org-config ends here
