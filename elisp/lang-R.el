;;; package --- R configs
;;; Commentary:
;;; Contains my R configs

;;; Code:

(use-package ess
  :ensure t
  :mode ("\\.R" . R-mode)
  :init
  (setq ess-indent-with-fancy-comments nil))
  (require 'ess-site)
  :config
(setq ess-indent-with-fancy-comments nil)
(setq ess-R-font-lock-keywords
   (quote
    ((ess-R-fl-keyword:modifiers . t)
     (ess-R-fl-keyword:fun-defs . t)
     (ess-R-fl-keyword:keywords . t)
     (ess-R-fl-keyword:assign-ops . t)
     (ess-R-fl-keyword:constants . t)
     (ess-fl-keyword:fun-calls . t)
     (ess-fl-keyword:numbers . t)
     (ess-fl-keyword:operators . t)
     (ess-fl-keyword:delimiters)
     (ess-fl-keyword:= . t)
     (ess-R-fl-keyword:F&T . t)
     ;; (ess-R-fl-keyword:%op% . t)
     )))


;; changes "-" to ";" to insert "<-", because underscores are often used.
  (setq ess-smart-S-assign-key ";")
  (ess-toggle-S-assign nil)
  (ess-toggle-S-assign nil)

    (add-hook 'ess-mode-hook
            (lambda ()
            (font-lock-add-keywords nil
                                    '(("\\<\\(g\\|FIXME\\|ToDo\\|BUG\\):"
                                       1 font-lock-warning-face t)))))

    ;; (add-hook 'ess-mode-hook #'whitespace-mode)

   (defun my-ess-settings ()
     (setq ess-indent-with-fancy-comments nil))
   (add-hook 'ess-mode-hook #'my-ess-settings)


(provide 'lang-R)
;;; lang-R.el ends here
