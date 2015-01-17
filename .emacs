(setq inhibit-startup-message   t)
(setq make-backup-files         nil)
(setq auto-save-default         nil)
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(prefer-coding-system 'utf-8)
(setq-default show-trailing-whitespace nil)
;(delete-selection-mode 1)

;(modify-syntax-entry ?! "w")
;(modify-syntax-entry ?" "w")
;(modify-syntax-entry ?# "w")
;(modify-syntax-entry ?$ "w")
;(modify-syntax-entry ?% "w")
;(modify-syntax-entry ?& "w")
;(modify-syntax-entry ?' "w")
;(modify-syntax-entry ?( "w")
;(modify-syntax-entry ?) "w")
;(modify-syntax-entry ?* "w")
;(modify-syntax-entry ?+ "w")
;(modify-syntax-entry ?, "w")
;(modify-syntax-entry ?- "w")
;(modify-syntax-entry ?. "w")
;;(modify-syntax-entry ?/ "w")
;(modify-syntax-entry ?: "w")
;(modify-syntax-entry ?; "w")
;(modify-syntax-entry ?< "w")
;(modify-syntax-entry ?= "w")
;(modify-syntax-entry ?> "w")
;(modify-syntax-entry ?? "w")
;(modify-syntax-entry ?@ "w")
;(modify-syntax-entry ?[ "w")
;(modify-syntax-entry ?\\ "w")
;(modify-syntax-entry ?] "w")
;(modify-syntax-entry ?^ "w")
;(modify-syntax-entry ?_ "w")
;(modify-syntax-entry ?` "w")
;(modify-syntax-entry ?{ "w")
;(modify-syntax-entry ?| "w")
;(modify-syntax-entry ?} "w")
;(modify-syntax-entry ?~ "w")
;;(modify-syntax-entry ?~ "w" standard-syntax-table)



;delete-trailing-whitespace
;(setq-default indent-tabs-mode nil)
;(setq c-basic-offset 4)
;(setq tab-width 4)

(setq-default tab-width 4)
;(add-hook 'python-mode-hook (function (lambda () (setq tab-width 4))))
;(global-set-key "	" '(lambda () (interactive) (insert "	") ))
;(global-set-key "I" '(lambda () (interactive) (insert "	") ))
(add-hook 'python-mode-hook
  (lambda ()
    (setq indent-tabs-mode t)
    (setq python-indent 4)
    (setq tab-width 4)))

;(setq indent-tabs-mode nil)
;(setq-default indent-tabs-mode t)
;(setq-default tab-always-indent nil)
;(add-hook 'html-mode-hook (lambda() (setq sgml-basic-offset 4) (setq indent-tabs-mode nil)))
;(add-hook 'python-mode-hook (lambda() (setq sgml-basic-offset 4) (setq indent-tabs-mode nil)))
;(add-hook 'text-mode-hook (lambda() (setq sgml-basic-offset 4) (setq indent-tabs-mode nil)))
;(add-hook 'fundamental-mode-hook (lambda() (setq sgml-basic-offset 4) (setq indent-tabs-mode nil)))

(column-number-mode)

(defalias 'yes-or-no-p 'y-or-n-p)

(set-foreground-color "white")
(set-background-color "gray15")
(set-cursor-color "white")
(setq x-select-enable-clipboard t)
(setq display-time-day-and-date t display-time-24hr-format t)
(display-time)
(show-paren-mode 1)
(define-key text-mode-map (kbd "TAB") 'self-insert-command)

(defun fullscreen (&optional f)
(interactive)
(set-frame-parameter f 'fullscreen
(if (frame-parameter f 'fullscreen) nil 'fullboth)))
;(fullscreen)

;(add-hook 'dired-mode-hook
; (lambda ()
;  (define-key dired-mode-map (kbd "<return>")
;    'dired-find-alternate-file) ; was dired-advertised-find-file
;  (define-key dired-mode-map (kbd "^")
;    (lambda () (interactive) (find-alternate-file "..")))
  ; was dired-up-directory
; ))



(defun buffer-menu-next ()
(interactive)
(buffer-menu)
(next-line)
)

;/usr/share/emacs/23.1/lisp/buff-menu.el.gz
(add-hook 'buffer-menu-mode-hook
 (lambda ()
(define-key Buffer-menu-mode-map "j" 'next-line)
(define-key Buffer-menu-mode-map "k" 'previous-line)
(define-key Buffer-menu-mode-map "a" 'Buffer-menu-this-window)

;(define-key Buffer-menu-mode-map "a" 'Buffer-menu-1-window)
 ))



(setq ansi-color-names-vector ; better contrast colors
      ["black" "red4" "green4" "yellow4"
       "blue3" "magenta4" "cyan4" "white"])

(add-hook 'shell-mode-hook 
 (lambda ()
(define-key shell-mode-map (kbd "C-p") 'comint-previous-input)
(ansi-color-for-comint-mode-on)
 )
)



(global-set-key [?\C-h] 'delete-backward-char)
(global-set-key "\C-w" 'backward-kill-word)

;(global-set-key "\C-n" '(lambda (n) (interactive "p")
;  (buffer-menu)
;  (next-line)
;  (Buffer-menu-select)
;))


;;
;(cua-mode)

;(setenv "BIND_KEYBOARD_LAYOUT" "us") ; US layout
;(load "~/md/min/bind-keybindings-5.1/bind-mode.el")
;; turn on minor mode bind-mode
;(bind-mode 1)

;Dual mode

(defalias 'scroll-ahead 'scroll-up)
(defalias 'scroll-behind 'scroll-down)

(defun scroll-one-line-ahead ()
  "Scroll ahead one line."
  (interactive)
  (scroll-ahead 1))

(defun scroll-one-line-behind ()
  "Scroll behind one line."
  (interactive)
  (scroll-behind 1))

(defun scroll-n-lines-ahead (&optional n)
  "Scroll ahead N lines (1 by default)."
  (interactive "P")
  (scroll-ahead (prefix-numeric-value n)))

(defun scroll-n-lines-behind (&optional n)
  "Scroll behind N lines (1 by default)."
  (interactive "P")
  (scroll-behind (prefix-numeric-value n)))


;(load "~/md/min/ubuntu/xclip.el")
;(turn-on-xclip)

;(load "undo-tree.el")

;(load "~/md/min/redo.el")
;(global-set-key [(meta backspace)] 'undo)
;(global-set-key [(meta shift backspace)] 'redo)



(put 'dired-find-alternate-file 'disabled nil)

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(defun shell-rename-uniquely ()
(interactive)
(shell)
(rename-uniquely)
(bury-buffer)
(unbury-buffer)
)

(defun switch-to-previous-buffer ()
      (interactive)
      (switch-to-buffer (other-buffer))
)

(defun semicolon ()
      (interactive)
      (insert ";")
)

(defvar bind-keymap (make-sparse-keymap)
  "Bind minor mode keymap.")

(define-key bind-keymap (kbd "j") 'next-line)
(define-key bind-keymap (kbd "q") 'kill-buffer)
(define-key bind-keymap (kbd "w") 'save-buffer)
(define-key bind-keymap (kbd "e") 'backward-word)
(define-key bind-keymap (kbd "r") 'forward-word)
(define-key bind-keymap (kbd "t") 'shell-rename-uniquely)

(define-key bind-keymap (kbd "y") 'execute-extended-command)
(define-key bind-keymap (kbd "u") 'scroll-up)
(define-key bind-keymap (kbd "i") 'scroll-down)
;(define-key bind-keymap (kbd "C-o") 'find-file)
(define-key bind-keymap "o" 'find-file)
(define-key bind-keymap (kbd "p") 'set-mark-command)
(define-key bind-keymap (kbd "A") '(lambda (n) (interactive "p")(print major-mode)))
(define-key bind-keymap (kbd "A") '(lambda (n) (interactive "p")(print indent-tabs-mode)(print tab-always-indent)))

(define-key bind-keymap (kbd "a") '(lambda (n) (interactive "p")(
  if (equal major-mode 'Buffer-menu-mode)(progn(Buffer-menu-this-window)(bury-buffer "*Buffer List*"))(buffer-menu-next)
)))

(define-key bind-keymap (kbd "s") 'move-beginning-of-line)
(define-key bind-keymap (kbd "d") 'backward-char)

(defun tab-shift-left()
	(interactive)
	(replace-string "a" "b")
)

;(define-key bind-keymap (kbd "D") 'tab-shift-left)
(define-key bind-keymap (kbd "f") 'forward-char)
(define-key bind-keymap (kbd "g") 'move-end-of-line)

(define-key bind-keymap (kbd "h") 'end-of-buffer)(define-key bind-keymap "H" 'w3m-view-previous-page)
(define-key bind-keymap (kbd "j") 'next-line)
(define-key bind-keymap (kbd "k") 'previous-line)
(define-key bind-keymap (kbd "l") 'beginning-of-buffer)
;;

(define-key bind-keymap (kbd "z") 'undo-tree-undo)(define-key bind-keymap (kbd "Z") 'undo-tree-redo)
(define-key bind-keymap (kbd "x") 'delete-region)
;(define-key bind-keymap "x" '(lambda () (interactive) () ))
; (kill-region)(setq kill-ring (cdr kill-ring))
(define-key bind-keymap (kbd "c") 'kill-ring-save)
(define-key bind-keymap (kbd "v") 'yank)
(define-key bind-keymap "b" '(lambda () (interactive) (insert ";") ))

(define-key bind-keymap (kbd "n") '(lambda (n) (interactive "p")(
  if (equal major-mode 'dired-mode)(dired-mark 1)(switch-to-previous-buffer)
)))
(define-key bind-keymap (kbd "m") '(lambda (n) (interactive "p")(
  if (equal major-mode 'dired-mode)(dired-find-alternate-file)(switch-to-previous-buffer)
)))
(define-key bind-keymap (kbd "m") 'switch-to-previous-buffer)
;(define-key bind-keymap "n" '(lambda () (interactive) (insert "\n") ))

;(define-key bind-keymap (kbd ",") 'scroll-one-line-behind)
;(define-key bind-keymap (kbd ".") 'switch-to-previous-buffer)
;(define-key bind-keymap (kbd "/") 'isearch-forward)            
;(define-key bind-keymap (kbd "?") 'isearch-backward)

(define-minor-mode bind-mode
      "bind-mode quick hotkeys"
      :init-value nil
      :lighter " edit"
      :global t
      :keymap bind-keymap
      :group 'hotkeys
)

(defun change-color ()
      (interactive)
  (if (equal bind-mode t)
      (progn
	(set-face-foreground 'mode-line "green")
      )
      (progn
	(set-face-foreground 'mode-line "white")
      )  
  )
)


(defun bind-mode-flip ()
      (interactive)
  (if (equal bind-mode t)
      (progn
	(setq bind-mode         nil)
      )
      (progn
	(setq bind-mode         t)
      )  
  )
  (change-color)
)
(bind-mode-flip)
(global-set-key ";" 'bind-mode-flip)



(add-hook 'c-mode-hook
 (lambda ()
(define-key c-mode-map ";" 'bind-mode-flip)
;(define-key c-mode-map "," 'ascii-mode-flip)
 ))

(add-hook 'c++-mode-hook
 (lambda ()
(define-key c++-mode-map ";" 'bind-mode-flip)
;(define-key c++-mode-map "," 'ascii-mode-flip)
 ))

(add-hook 'java-mode-hook
 (lambda ()
(define-key java-mode-map ";" 'bind-mode-flip)
;(define-key java-mode-map "," 'ascii-mode-flip)
 ))








;j mode

(defun j-mode-flip ()
      (interactive)
  (if (equal j-mode t)
      (progn
	(setq j-mode         nil)
      )
      (progn
	(setq j-mode         t)
      )  
  )
)

(defvar j-keymap (make-sparse-keymap) "j minor mode keymap.")
(define-key j-keymap "q" '(lambda () (interactive) (insert "=") (j-mode-flip) ))
(define-key j-keymap "w" '(lambda () (interactive) (insert "-") (j-mode-flip) ))
(define-key j-keymap "e" '(lambda () (interactive) (insert "je") (j-mode-flip) ))
(define-key j-keymap "r" '(lambda () (interactive) (insert "+") (j-mode-flip) ))
(define-key j-keymap "t" '(lambda () (interactive) (insert "_") (j-mode-flip) ))
(define-key j-keymap "y" '(lambda () (interactive) (insert ".") (j-mode-flip) ))
(define-key j-keymap "u" '(lambda () (interactive) (insert "ju") (j-mode-flip) ))
(define-key j-keymap "i" '(lambda () (interactive) (insert "ji") (j-mode-flip) ))
(define-key j-keymap "o" '(lambda () (interactive) (insert "jo") (j-mode-flip) ))
(define-key j-keymap "p" '(lambda () (interactive) (insert "\\") (j-mode-flip) ))

(define-key j-keymap "a" '(lambda () (interactive) (insert "ja") (j-mode-flip) ))
(define-key j-keymap "s" '(lambda () (interactive) (insert "|") (j-mode-flip) ))
(define-key j-keymap "d" '(lambda () (interactive) (insert "[") (j-mode-flip) ))
(define-key j-keymap "f" '(lambda () (interactive) (insert "]") (j-mode-flip) ))
(define-key j-keymap "g" '(lambda () (interactive) (insert "'") (j-mode-flip) ))
(define-key j-keymap "h" '(lambda () (interactive) (insert ".") (j-mode-flip) ))
(define-key j-keymap "j" '(lambda () (interactive) (insert "j") (j-mode-flip) ))
(define-key j-keymap "k" '(lambda () (interactive) (j-mode-flip)(numeric-mode-flip) ))
(define-key j-keymap "k" '(lambda () (interactive) (j-mode-flip)(upcase-mode-flip) ))
(define-key j-keymap "l" '(lambda () (interactive) (j-mode-flip)(symbol-mode-flip) ))

(define-key j-keymap "z" '(lambda () (interactive) (insert "{") (j-mode-flip) ))
(define-key j-keymap "x" '(lambda () (interactive) (insert "}") (j-mode-flip) ))
(define-key j-keymap "c" '(lambda () (interactive) (insert "(") (j-mode-flip) ))
(define-key j-keymap "v" '(lambda () (interactive) (insert ")") (j-mode-flip) ))
(define-key j-keymap "b" '(lambda () (interactive) (insert "\"") (j-mode-flip) ))
(define-key j-keymap "n" '(lambda () (interactive) (insert ".") (j-mode-flip) ))
(define-key j-keymap "m" '(lambda () (interactive) (insert ".") (j-mode-flip) ))

(define-key j-keymap " " '(lambda () (interactive) (insert "j ") (j-mode-flip) ))
(define-minor-mode j-mode
      "j-mode"
      :init-value nil
      :lighter " j"
      :global t
      :keymap j-keymap
      :group 'hotkeys
)
(global-set-key "j" '(lambda () (interactive) (j-mode-flip)))







;numeric mode

(defun numeric-mode-flip ()
      (interactive)
  (if (equal numeric-mode t)
      (progn
	(setq numeric-mode         nil)
      )
      (progn
	(setq numeric-mode         t)
      )  
  )
)

(defvar numeric-keymap (make-sparse-keymap) "j minor mode keymap.")
(define-key numeric-keymap "q" '(lambda () (interactive) (insert ".") (numeric-mode-flip) ))
(define-key numeric-keymap "w" '(lambda () (interactive) (insert ".") (numeric-mode-flip) ))
(define-key numeric-keymap "e" '(lambda () (interactive) (insert ".") (numeric-mode-flip) ))
(define-key numeric-keymap "r" '(lambda () (interactive) (insert ".") (numeric-mode-flip) ))
(define-key numeric-keymap "t" '(lambda () (interactive) (insert ".") (numeric-mode-flip) ))
(define-key numeric-keymap "y" '(lambda () (interactive) (insert ".") (numeric-mode-flip) ))
(define-key numeric-keymap "u" '(lambda () (interactive) (insert ".") (numeric-mode-flip) ))
(define-key numeric-keymap "i" '(lambda () (interactive) (insert ".") (numeric-mode-flip) ))
(define-key numeric-keymap "o" '(lambda () (interactive) (insert ".") (numeric-mode-flip) ))
(define-key numeric-keymap "p" '(lambda () (interactive) (insert "0") (numeric-mode-flip) ))

(define-key numeric-keymap "a" '(lambda () (interactive) (insert "1") (numeric-mode-flip) ))
(define-key numeric-keymap "s" '(lambda () (interactive) (insert "2") (numeric-mode-flip) ))
(define-key numeric-keymap "d" '(lambda () (interactive) (insert "3") (numeric-mode-flip) ))
(define-key numeric-keymap "f" '(lambda () (interactive) (insert "4") (numeric-mode-flip) ))
(define-key numeric-keymap "g" '(lambda () (interactive) (insert "5") (numeric-mode-flip) ))
(define-key numeric-keymap "h" '(lambda () (interactive) (insert "6") (numeric-mode-flip) ))
(define-key numeric-keymap "j" '(lambda () (interactive) (insert "7") (numeric-mode-flip) ))
(define-key numeric-keymap "k" '(lambda () (interactive) (insert "8") (numeric-mode-flip) ))
(define-key numeric-keymap "l" '(lambda () (interactive) (insert "9")(numeric-mode-flip) ))

(define-key numeric-keymap "z" '(lambda () (interactive) (insert ".") (numeric-mode-flip) ))
(define-key numeric-keymap "x" '(lambda () (interactive) (insert ".") (numeric-mode-flip) ))
(define-key numeric-keymap "c" '(lambda () (interactive) (insert ".") (numeric-mode-flip) ))
(define-key numeric-keymap "v" '(lambda () (interactive) (insert ".") (numeric-mode-flip) ))
(define-key numeric-keymap "b" '(lambda () (interactive) (insert ".") (numeric-mode-flip) ))
(define-key numeric-keymap "n" '(lambda () (interactive) (insert ".") (numeric-mode-flip) ))
(define-key numeric-keymap "m" '(lambda () (interactive) (insert ".") (numeric-mode-flip) ))

(define-key numeric-keymap " " '(lambda () (interactive) (insert ".") (numeric-mode-flip) ))
(define-minor-mode numeric-mode
      "numeric-mode"
      :init-value nil
      :lighter " j"
      :global t
      :keymap numeric-keymap
      :group 'hotkeys
)




;symbol mode

(defun symbol-mode-flip ()
      (interactive)
  (if (equal symbol-mode t)
      (progn
	(setq symbol-mode         nil)
      )
      (progn
	(setq symbol-mode         t)
      )  
  )
)

(defvar symbol-keymap (make-sparse-keymap) "j minor mode keymap.")
(define-key symbol-keymap "q" '(lambda () (interactive) (insert ".") (symbol-mode-flip) ))
(define-key symbol-keymap "w" '(lambda () (interactive) (insert ".") (symbol-mode-flip) ))
(define-key symbol-keymap "e" '(lambda () (interactive) (insert ".") (symbol-mode-flip) ))
(define-key symbol-keymap "r" '(lambda () (interactive) (insert ".") (symbol-mode-flip) ))
(define-key symbol-keymap "t" '(lambda () (interactive) (insert ".") (symbol-mode-flip) ))
(define-key symbol-keymap "y" '(lambda () (interactive) (insert ".") (symbol-mode-flip) ))
(define-key symbol-keymap "u" '(lambda () (interactive) (insert ".") (symbol-mode-flip) ))
(define-key symbol-keymap "i" '(lambda () (interactive) (insert ".") (symbol-mode-flip) ))
(define-key symbol-keymap "o" '(lambda () (interactive) (insert ".") (symbol-mode-flip) ))
(define-key symbol-keymap "p" '(lambda () (interactive) (insert ".") (symbol-mode-flip) ))

(define-key symbol-keymap "a" '(lambda () (interactive) (insert "!") (symbol-mode-flip) ))
(define-key symbol-keymap "s" '(lambda () (interactive) (insert "@") (symbol-mode-flip) ))
(define-key symbol-keymap "d" '(lambda () (interactive) (insert "#") (symbol-mode-flip) ))
(define-key symbol-keymap "f" '(lambda () (interactive) (insert "$") (symbol-mode-flip) ))
(define-key symbol-keymap "g" '(lambda () (interactive) (insert "%") (symbol-mode-flip) ))
(define-key symbol-keymap "h" '(lambda () (interactive) (insert "^") (symbol-mode-flip) ))
(define-key symbol-keymap "j" '(lambda () (interactive) (insert "&") (symbol-mode-flip) ))
(define-key symbol-keymap "k" '(lambda () (interactive) (insert "*") (symbol-mode-flip) ))
(define-key symbol-keymap "l" '(lambda () (interactive) (insert "(")(symbol-mode-flip) ))

(define-key symbol-keymap "z" '(lambda () (interactive) (insert ".") (symbol-mode-flip) ))
(define-key symbol-keymap "x" '(lambda () (interactive) (insert ".") (symbol-mode-flip) ))
(define-key symbol-keymap "c" '(lambda () (interactive) (insert ".") (symbol-mode-flip) ))
(define-key symbol-keymap "v" '(lambda () (interactive) (insert ".") (symbol-mode-flip) ))
(define-key symbol-keymap "b" '(lambda () (interactive) (insert ".") (symbol-mode-flip) ))
(define-key symbol-keymap "n" '(lambda () (interactive) (insert ".") (symbol-mode-flip) ))
(define-key symbol-keymap "m" '(lambda () (interactive) (insert ".") (symbol-mode-flip) ))

(define-key symbol-keymap " " '(lambda () (interactive) (insert ".") (symbol-mode-flip) ))
(define-minor-mode symbol-mode
      "symbol-mode"
      :init-value nil
      :lighter " j"
      :global t
      :keymap symbol-keymap
      :group 'hotkeys
)





;upcase mode

(defun upcase-mode-flip ()
      (interactive)
  (if (equal upcase-mode t)
      (progn
	(setq upcase-mode         nil)
      )
      (progn
	(setq upcase-mode         t)
      )  
  )
)

(defvar upcase-keymap (make-sparse-keymap) "upcase minor mode keymap.")
(define-key upcase-keymap "q" '(lambda () (interactive) (insert "Q") (upcase-mode-flip) ))
(define-key upcase-keymap "w" '(lambda () (interactive) (insert "W") (upcase-mode-flip) ))
(define-key upcase-keymap "e" '(lambda () (interactive) (insert "E") (upcase-mode-flip) ))
(define-key upcase-keymap "r" '(lambda () (interactive) (insert "R") (upcase-mode-flip) ))
(define-key upcase-keymap "t" '(lambda () (interactive) (insert "T") (upcase-mode-flip) ))
(define-key upcase-keymap "y" '(lambda () (interactive) (insert "Y") (upcase-mode-flip) ))
(define-key upcase-keymap "u" '(lambda () (interactive) (insert "U") (upcase-mode-flip) ))
(define-key upcase-keymap "i" '(lambda () (interactive) (insert "I") (upcase-mode-flip) ))
(define-key upcase-keymap "o" '(lambda () (interactive) (insert "O") (upcase-mode-flip) ))
(define-key upcase-keymap "p" '(lambda () (interactive) (insert "P") (upcase-mode-flip) ))

(define-key upcase-keymap "a" '(lambda () (interactive) (insert "A") (upcase-mode-flip) ))
(define-key upcase-keymap "s" '(lambda () (interactive) (insert "S") (upcase-mode-flip) ))
(define-key upcase-keymap "d" '(lambda () (interactive) (insert "D") (upcase-mode-flip) ))
(define-key upcase-keymap "f" '(lambda () (interactive) (insert "F") (upcase-mode-flip) ))
(define-key upcase-keymap "g" '(lambda () (interactive) (insert "G") (upcase-mode-flip) ))
(define-key upcase-keymap "h" '(lambda () (interactive) (insert "H") (upcase-mode-flip) ))
(define-key upcase-keymap "j" '(lambda () (interactive) (insert "J") (upcase-mode-flip) ))
(define-key upcase-keymap "k" '(lambda () (interactive) (insert "K") (upcase-mode-flip) ))
(define-key upcase-keymap "l" '(lambda () (interactive) (insert "L")(upcase-mode-flip) ))

(define-key upcase-keymap "z" '(lambda () (interactive) (insert "Z") (upcase-mode-flip) ))
(define-key upcase-keymap "x" '(lambda () (interactive) (insert "X") (upcase-mode-flip) ))
(define-key upcase-keymap "c" '(lambda () (interactive) (insert "C") (upcase-mode-flip) ))
(define-key upcase-keymap "v" '(lambda () (interactive) (insert "V") (upcase-mode-flip) ))
(define-key upcase-keymap "b" '(lambda () (interactive) (insert "B") (upcase-mode-flip) ))
(define-key upcase-keymap "n" '(lambda () (interactive) (insert "N") (upcase-mode-flip) ))
(define-key upcase-keymap "m" '(lambda () (interactive) (insert "M") (upcase-mode-flip) ))

(define-key upcase-keymap " " '(lambda () (interactive) (insert " ") (upcase-mode-flip) ))
(define-minor-mode upcase-mode
      "upcase-mode"
      :init-value nil
      :lighter " j"
      :global t
      :keymap upcase-keymap
      :group 'hotkeys
)







;dvorak mode

(defun dvorak-mode-flip ()
      (interactive)
  (if (equal dvorak-mode t)
      (progn
	(setq dvorak-mode         nil)
      )
      (progn
	(setq dvorak-mode         t)
      )  
  )
)

(defvar dvorak-keymap (make-sparse-keymap) "j minor mode keymap.")
(define-key dvorak-keymap "q" '(lambda () (interactive) (insert ".")))
(define-key dvorak-keymap "w" '(lambda () (interactive) (insert ".")))
(define-key dvorak-keymap "e" '(lambda () (interactive) (insert ".")))
(define-key dvorak-keymap "r" '(lambda () (interactive) (insert "p")))
(define-key dvorak-keymap "t" '(lambda () (interactive) (insert "y")))
(define-key dvorak-keymap "y" '(lambda () (interactive) (insert "f")))
(define-key dvorak-keymap "u" '(lambda () (interactive) (insert "g")))
(define-key dvorak-keymap "i" '(lambda () (interactive) (insert "c")))
(define-key dvorak-keymap "o" '(lambda () (interactive) (insert "r")))
(define-key dvorak-keymap "p" '(lambda () (interactive) (insert "l")))

(define-key dvorak-keymap "a" '(lambda () (interactive) (insert "a")))
(define-key dvorak-keymap "s" '(lambda () (interactive) (insert "o")))
(define-key dvorak-keymap "d" '(lambda () (interactive) (insert "e")))
(define-key dvorak-keymap "f" '(lambda () (interactive) (insert "u")))
(define-key dvorak-keymap "g" '(lambda () (interactive) (insert "i")))
(define-key dvorak-keymap "h" '(lambda () (interactive) (insert "d")))
(define-key dvorak-keymap "j" '(lambda () (interactive) (insert "h")))
(define-key dvorak-keymap "k" '(lambda () (interactive) (insert "t")))
(define-key dvorak-keymap "l" '(lambda () (interactive) (insert "n")))
;s here

(define-key dvorak-keymap "z" '(lambda () (interactive) (insert ".")))
(define-key dvorak-keymap "x" '(lambda () (interactive) (insert "q")))
(define-key dvorak-keymap "c" '(lambda () (interactive) (insert "j")))
(define-key dvorak-keymap "v" '(lambda () (interactive) (insert "k")))
(define-key dvorak-keymap "b" '(lambda () (interactive) (insert "x")))
(define-key dvorak-keymap "n" '(lambda () (interactive) (insert "b")))
(define-key dvorak-keymap "m" '(lambda () (interactive) (insert "m")))
(define-key dvorak-keymap "," '(lambda () (interactive) (insert "w")))
(define-key dvorak-keymap "." '(lambda () (interactive) (insert "v")))
(define-key dvorak-keymap "/" '(lambda () (interactive) (insert "z")))

(define-minor-mode dvorak-mode
      "dvorak-mode"
      :init-value nil
      :lighter " j"
      :global t
      :keymap dvorak-keymap
      :group 'hotkeys
)








;(load "~/sunrise-commander.el")



(setq scroll-margin 5)

;(pymacs-load "mypymacs")
;(global-set-key [f7] 'mypymacs-break-on-whitespace)

; solved: 1,2,3,4
;(add-to-list 'load-path "~/md/min/emacs-sokoban-0.14.1/")
;(setq sokoban-levels-dir "~/md/min/emacs-sokoban-0.14.1/sokoban-levels")
;(autoload 'sokoban "sokoban.el"
;  "Start a new game of Sokoban." t)
;(autoload 'sokoban-mode "sokoban.el"
;  "Play Sokoban in current buffer." t)












(require 'ls-lisp)
(require 'dired)

(defun dired-up-directory (&optional other-window)
          "Run Dired on parent directory of current directory."
          (interactive "P")
          (let* ((dir (dired-current-directory))
     	    (orig (current-buffer))
     	    (up (file-name-directory (directory-file-name dir))))
            (or (dired-goto-file (directory-file-name dir))
     	   ;; Only try dired-goto-subdir if buffer has more than one dir.
     	   (and (cdr dired-subdir-alist)
     		(dired-goto-subdir up))
     	   (progn
     	     (kill-buffer orig)
     	     (dired up)
     	     (dired-goto-file dir)))))

;/usr/share/emacs/23.1/lisp/dired.el.gz
(add-hook 'dired-mode-hook
 (lambda ()
(define-key dired-mode-map "j" 'next-line)
(define-key dired-mode-map "k" 'previous-line)
(define-key dired-mode-map "a" 'buffer-menu-next)
(define-key dired-mode-map (kbd "C-m") 'dired-find-alternate-file)
(define-key dired-mode-map "." 'dired-isearch-filenames)
(define-key dired-mode-map "/" 'dired-up-directory)
;(define-key dired-mode-map (kbd "C") '(lambda (n) (interactive "p")(kill-new (format "cp -r '%s' ." (mapconcat (function identity) (dired-get-marked-files) "' '")))))
(define-key dired-mode-map (kbd "c") '(lambda (n) (interactive "p")(kill-new (format "\"%s\"" (mapconcat (function identity) (dired-get-marked-files) "\" \"")) ) (setq cutcopy "cp -r ") ))
(define-key dired-mode-map (kbd "x") '(lambda (n) (interactive "p")(kill-new (format "\"%s\"" (mapconcat (function identity) (dired-get-marked-files) "\" \"")) ) (setq cutcopy "mv ") ))
;(define-key dired-mode-map (kbd "V") '(lambda (n) (interactive "p")(shell-command(current-kill 0))))
(define-key dired-mode-map (kbd "v") '(lambda (n) (interactive "p") (shell-command (concat cutcopy (current-kill 0) " .") ) (revert-buffer) ))
;
(define-key dired-mode-map (kbd "o") '(lambda (n) (interactive "p")(shell-command (format "o \"%s\"" (mapconcat (function identity) (dired-get-marked-files) "' '")))))
(define-key dired-mode-map (kbd "P") '(lambda (n) (interactive "p")(shell-command (format "p \"%s\"" (mapconcat (function identity) (dired-get-marked-files) "' '")))))
(define-key dired-mode-map (kbd "L") '(lambda (n) (interactive "p")(shell-command (format "run vlc \"%s\"" (mapconcat (function identity) (dired-get-marked-files) "' '")))))
(define-key dired-mode-map (kbd "M") '(lambda (n) (interactive "p")(shell-command (format "mplayer \"%s\"" (mapconcat (function identity) (dired-get-marked-files) "' '")))))

 )
)




;(setq dired-listing-switches "-alh --group-directories-first -S")
(setq dired-listing-switches "-alh --group-directories-first")

;; redefine this function, to fix the formatting of file sizes in dired mode
(defun ls-lisp-format-file-size (file-size human-readable)
  (if (or (not human-readable)
          (< file-size 1024))
      (format (if (floatp file-size) " %11.0f" " %11d") file-size)
    (do ((file-size (/ file-size 1024.0) (/ file-size 1024.0))
         ;; kilo, mega, giga, tera, peta, exa
         (post-fixes (list "k" "M" "G" "T" "P" "E") (cdr post-fixes)))
        ((< file-size 1024) (format " %10.0f%s"  file-size (car post-fixes))))))

;; Redefine the sorting in dired to flip between sorting on name, size,
;; time, and extension, rather than simply on name and time.

(defun dired-sort-toggle ()
  ;; Toggle between sort by date/name.  Reverts the buffer.
  (setq dired-actual-switches
        (let (case-fold-search)

          (cond

           ((string-match " " dired-actual-switches) ;; contains a space
            ;; New toggle scheme: add/remove a trailing " -t" " -S",
            ;; or " -U"
            ;; -t = sort by time (date)
            ;; -S = sort by size
            ;; -X = sort by extension
;                 (print dired-actual-switches)

            (cond

             ((string-match " -t\\'" dired-actual-switches)
              (concat
               (substring dired-actual-switches 0 (match-beginning 0))
               " -X"))

             (
               (string-match " -X\\'" dired-actual-switches)
                 (concat(substring dired-actual-switches 0 (match-beginning 0))" -S")
             )

             ((string-match " -S\\'" dired-actual-switches)
              (substring dired-actual-switches 0 (match-beginning 0)))

             (t
              (concat dired-actual-switches " -t"))))

           (t
            ;; old toggle scheme: look for a sorting switch, one of [tUXS]
            ;; and switch between them. Assume there is only ONE present.
            (let* ((old-sorting-switch
                    (if (string-match (concat "[t" dired-ls-sorting-switches "]")
                                      dired-actual-switches)
                        (substring dired-actual-switches (match-beginning 0)
                                   (match-end 0))
                      ""))

                   (new-sorting-switch
                    (cond
                     ((string= old-sorting-switch "t")
                      "X")
                     ((string= old-sorting-switch "X")
                      "S")
                     ((string= old-sorting-switch "S")
                      "")
                     (t
                      "t"))))
              (concat
               "-l"
               ;; strip -l and any sorting switches
               (dired-replace-in-string (concat "[-lt"
                                                dired-ls-sorting-switches "]")
                                        ""
                                        dired-actual-switches)
               new-sorting-switch))))))

  (dired-sort-set-modeline)
  (revert-buffer)
;(message dired-actual-switches)
)


;; redefine this fn, to properly provide the modeline in dired mode,
;; supporting the new search modes I defined above.
(defun dired-sort-set-modeline ()
  ;; Set modeline display according to dired-actual-switches.
  ;; Modeline display of "by name" or "by date" guarantees the user a
  ;; match with the corresponding regexps.  Non-matching switches are
  ;; shown literally.
  (when (eq major-mode 'dired-mode)
    (setq mode-name
          (let (case-fold-search)
            (cond ((string-match "^-[^t]*t[^t]*$" dired-actual-switches)
                   "Dired by date")
                  ((string-match "^-[^X]*X[^X]*$" dired-actual-switches)
                   "Dired by ext")
                  ((string-match "^-[^S]*S[^S]*$" dired-actual-switches)
                   "Dired by sz")
                  ((string-match "^-[^SXUt]*$" dired-actual-switches)
                   "Dired by name")
                  (t
                   (concat "Dired " dired-actual-switches)))))
    (force-mode-line-update)))

(setq epa-armor         t)
(require 'epa-file)
(epa-file-enable)

;(load "~/md/min/ubuntu/csv-mode.el")
;(add-to-list 'auto-mode-alist '("\\.[Cc][Ss][Vv]\\'" . csv-mode))
;(autoload 'csv-mode "csv-mode" "Major mode for editing comma-separated value files." t)

(defun ask-user-about-supersession-threat (fn)
  "blatantly ignore files that changed on disk"
  )
(defun ask-user-about-lock (file opponent)
  "always grab lock"
   t)

(defun verify-visited-file-modtime (fn)
  "always not visited"
   t)
 