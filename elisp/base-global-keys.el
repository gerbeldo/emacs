;; Add your keys here, as such

;(global-set-key (kbd "[SHORTCUT]") '[FUNCTION])

;; remap C-a to `smarter-move-beginning-of-line'
(global-set-key [remap move-beginning-of-line]
                'smarter-move-beginning-of-line)


;; remap C-k to "kill-buffer-and-its-windows"
(global-set-key [remap kill-buffer] 'kill-buffer-and-its-windows)


(provide 'base-global-keys)
