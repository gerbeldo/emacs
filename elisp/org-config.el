;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; org-mode configuration                                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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

(provide 'org-config)
;;; org-config ends here
