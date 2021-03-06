(require 'package) 
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#eee8d5" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#839496"])
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#657b83")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (solarized-light)))
 '(custom-safe-themes (quote ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default)))
 '(eclim-eclipse-dirs (quote ("/usr/share/eclipse")))
 '(eclim-executable "/usr/share/eclipse/eclim")
 '(fci-rule-color "#eee8d5")
 '(font-use-system-font t)
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors (--map (solarized-color-blend it "#fdf6e3" 0.25) (quote ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#586e75")
 '(highlight-tail-colors (quote (("#eee8d5" . 0) ("#B4C342" . 20) ("#69CABF" . 30) ("#69B7F0" . 50) ("#DEB542" . 60) ("#F2804F" . 70) ("#F771AC" . 85) ("#eee8d5" . 100))))
 '(magit-diff-use-overlays nil)
 '(semantic-c-dependency-system-include-path (quote ("/usr/include" "/usr/include/c++/4.7.2/" "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.7.2/include/")))
 '(session-use-package t nil (session))
 '(show-paren-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#eee8d5" 0.2))
 '(term-default-bg-color "#fdf6e3")
 '(term-default-fg-color "#657b83")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map (quote ((20 . "#dc322f") (40 . "#c85d17") (60 . "#be730b") (80 . "#b58900") (100 . "#a58e00") (120 . "#9d9100") (140 . "#959300") (160 . "#8d9600") (180 . "#859900") (200 . "#669b32") (220 . "#579d4c") (240 . "#489e65") (260 . "#399f7e") (280 . "#2aa198") (300 . "#2898af") (320 . "#2793ba") (340 . "#268fc6") (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list (quote (unspecified "#fdf6e3" "#eee8d5" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#657b83" "#839496")))
 '(wg-query-for-save-on-emacs-exit t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "文泉驿等宽微米黑" :foundry "unknown" :slant normal :weight normal :height 128 :width normal))))
 '(wg-current-workgroup-face ((t (:foreground "black"))) t))
(put 'upcase-region 'disabled nil)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")))



(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/usr/share/auto-complete/ac-dict")
(ac-config-default)

;; show menu immediately...
(setq ac-auto-show-menu t)
;; (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)    
;; (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)    
;; (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)    
;; (add-hook 'css-mode-hook 'ac-css-mode-setup)    
;; (add-hook 'auto-complete-mode-hook 'ac-common-setup)   




;;(autoload 'python-mode "python-mode.el" "Python mode." t)
;;(setq auto-mode-alist (append '(("/*.\.py$" . python-mode)) auto-mode-alist))

					;(add-to-list 'load-path "/home/gsc/.emacs.d/elpa/yasnippet-0.8.0/")
					;(require 'yasnippet)
					;(yas-global-mode 1)
					;(yas/minor-mode-on)


(global-unset-key (kbd "C-SPC"))  
(global-set-key (kbd "S-SPC") 'set-mark-command)  

(require 'session)
(add-hook 'after-init-hook 'session-initialize)
(desktop-save-mode 1)

(show-paren-mode 1)
(setq show-paren-delay 0)

(semantic-mode 1)
;;(semantic-load-enable-excessive-code-helpers) 
;;(semantic-load-enable-semantic-debugging-helpers)
(global-set-key [f8] 'semantic-ia-fast-jump)

(add-hook 'c-mode-common-hook
	  (lambda() 
	    (local-set-key  (kbd "<f4>") 'ff-find-other-file)))


(global-linum-mode t)
(global-auto-revert-mode 1)

;; Semantic with ghost display (allows M-n and M-p to browse 
;; completion).
;; (require 'semantic-ia)


(defalias 'yes-or-no-p 'y-or-n-p)

(require 'auto-complete-clang-async)
(setq clang-completion-suppress-error 't)

(defun ac-cc-mode-setup ()
  (setq ac-clang-complete-executable "~/.emacs.d/clang-complete")
  (setq ac-sources '(ac-source-clang-async))
  (ac-clang-launch-completion-process)
)

(defun my-ac-config ()
  (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))

(my-ac-config)


(global-set-key [f11] 'my-fullscreen) ;; 启动全屏的快捷键
					;全屏
(defun my-fullscreen ()
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_FULLSCREEN" 0))
  )
(defun my-maximized ()
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(1 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(1 "_NET_WM_STATE_MAXIMIZED_VERT" 0)))
(server-start)				;启动服务器
					;启动时最大化
					;(my-fullscreen)
(autoload 'pkgbuild-mode "pkgbuild-mode.el" "PKGBUILD mode." t)                          
(setq auto-mode-alist (append '(("/PKGBUILD$" . pkgbuild-mode))                          
			      auto-mode-alist))     


(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers 

(iswitchb-mode 1)

(defalias 'list-buffers 'ibuffer)

(defun next-user-buffer ()
  "Switch to the next user buffer.
User buffers are those whose name does not start with *."
  (interactive)
  (next-buffer)
  (let ((i 0))
    (while (and (string-match "^*" (buffer-name)) (< i 50))
      (setq i (1+ i)) (next-buffer) )))

(defun previous-user-buffer ()
  "Switch to the previous user buffer.
User buffers are those whose name does not start with *."
  (interactive)
  (previous-buffer)
  (let ((i 0))
    (while (and (string-match "^*" (buffer-name)) (< i 50))
      (setq i (1+ i)) (previous-buffer) )))

(defun next-emacs-buffer ()
  "Switch to the next emacs buffer.
Emacs buffers are those whose name starts with *."
  (interactive)
  (next-buffer)
  (let ((i 0))
    (while (and (not (string-match "^*" (buffer-name))) (< i 50))
      (setq i (1+ i)) (next-buffer) )))

(defun previous-emacs-buffer ()
  "Switch to the previous emacs buffer.
Emacs buffers are those whose name starts with *."
  (interactive)
  (previous-buffer)
  (let ((i 0))
    (while (and (not (string-match "^*" (buffer-name))) (< i 50))
      (setq i (1+ i)) (previous-buffer) )))


;; sample easy keys

;; (global-set-key (kbd "<C-o>") 'find-file) ; Open file or dir
;; (global-set-key (kbd "<C-w>") 'kill-this-buffer) ; Close file

(global-set-key (kbd "<C-prior>") 'previous-user-buffer) ; Ctrl+PageUp
(global-set-key (kbd "<C-next>") 'next-user-buffer) ; Ctrl+PageDown
(global-set-key (kbd "<C-S-prior>") 'previous-emacs-buffer) ; Ctrl+Shift+PageUp
(global-set-key (kbd "<C-S-next>") 'next-emacs-buffer) ; Ctrl+Shift+PageDown



(require 'multi-web-mode)
(setq mweb-default-major-mode 'html-mode)
(setq mweb-tags '((php-mode "<\?php\|<\? \|<\?=" "\?>")
		  (js-mode "<script +\(type=\"text/javascript\"\|language=\"javascript\"\)[^>]*>" "</script>")
		  (css-mode "<style +type=\"text/css\"[^>]*>" "</style>")))
(setq mweb-filename-extensions '("php" "htm" "html" "ctp" "phtml" "php4" "php5"))
(multi-web-global-mode 1)


(defun flymake-clang-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
                     'flymake-create-temp-inplace))
         (local-file (file-relative-name
                      temp-file
                      (file-name-directory (buffer-file-name)))))
    `("clang" ,(append ac-clang-flags
                       `("-fsyntax-only"
                         "-fno-color-diagnostics"
                         ,local-file)))))
(defun flymake-clang-load ()
  (interactive)
  (when (buffer-file-name)
    (add-to-list 'flymake-allowed-file-name-masks
                 '("\\.\\(?:c\\(?:pp\\|xx\\|\\+\\+\\)?\\|CC\\)\\'"
                   flymake-clang-init))
    (flymake-mode-on)))
(add-hook 'c-mode-hook
          (lambda ()
            (add-hook 'hack-local-variables-hook
                      'flymake-clang-load
                      nil t)))
(add-hook 'c++-mode-hook
          (lambda ()
            (add-hook 'hack-local-variables-hook
                      'flymake-clang-load
                      nil t)))

(global-set-key (kbd "C-x k") 
		'(lambda () (interactive) 
		   (let (kill-buffer-query-functions) (kill-buffer))))

(remove-hook 'kill-buffer-query-functions 'server-kill-buffer-query-function)

(add-to-list 'load-path "/usr/share/emacs/site-lisp/multiple-cursors/")
(require 'multiple-cursors)
(global-unset-key (kbd "C-<down-mouse-1>"))
(global-set-key (kbd "C-<mouse-1>") 'mc/add-cursor-on-click)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")))

;; (add-to-list 'load-path "/home/gsc/.emacs.d/elpa/emacs-eclim-20130310.1237/")
;; (require 'eclim)
;; (global-eclim-mode)



;; (setq help-at-pt-display-when-idle t)
;; (setq help-at-pt-timer-delay 0.1)
;; (help-at-pt-set-timer)

;; ;; add the emacs-eclim source
;; (require 'ac-emacs-eclim-source)
;; (ac-emacs-eclim-config)

;; (add-hook 'eclim-mode-hook
;;           (lambda ()
;;             (add-to-list 'ac-sources 'ac-source-emacs-eclim)
;;             (add-to-list 'ac-sources 'ac-source-emacs-eclim-c-dot)))

;; add hook flyspell to latex mode
(add-hook 'LaTeX-mode-hook '(flyspell-mode t))

(require 'auctex-autoloads)
(require 'preview)

;;(require 'color-theme)		       
;;(require 'color-theme-solarized)

;;(color-theme-solarized-light)

;; (add-to-list 'load-path "/home/gsc/.emacs.d/elpa/workgroups-20110724.1825/")
;; (require 'workgroups)
;; (workgroups-mode 1)
;; (wg-load "/home/gsc/.emacs.d/workgroups")

(require 'jedi)
(add-hook 'python-mode-hook 'jedi:ac-setup)
(setq jedi:setup-keys t)

;; (add-to-list 'load-path "/home/gsc/.emacs.d/elpa/predictive/latex")
;; (add-to-list 'load-path "/home/gsc/.emacs.d/elpa/predictive/")
;; (add-to-list 'load-path "/home/gsc/.emacs.d/elpa/predictive/texinfo")
;; (add-to-list 'load-path "/home/gsc/.emacs.d/elpa/predictive/html")
;; (require 'predictive)
;; (autoload 'predictive-mode "predictive" "predictive" t)
;; (set-default 'predictive-auto-add-to-dict t)
;; (setq predictive-main-dict 'rpg-dictionary
;;       predictive-auto-learn t
;;       predictive-add-to-dict-ask nil
;;       predictive-use-auto-learn-cache nil
;;       predictive-which-dict t)

(setq auto-mode-alist (cons '("\.lua$" . lua-mode) auto-mode-alist))
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)


 

(delete-selection-mode 1)
(setq pkgbuild-update-md5sums-on-save nil)



(require 'ac-math)

(add-to-list 'ac-modes 'latex-mode)   ; make auto-complete aware of `latex-mode`

(defun ac-latex-mode-setup ()         ; add ac-sources to default ac-sources
  (setq ac-sources
     (append '(ac-source-math-unicode ac-source-math-latex ac-source-latex-commands)
               ac-sources)))

(add-hook 'latex-mode-hook 'ac-latex-mode-setup)

(ac-flyspell-workaround)


(add-to-list 'auto-mode-alist '("\\.\\([pP][Llm]\\|al\\)\\'" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl5" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("miniperl" . cperl-mode))


(require 'php-mode)

(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;;(setq max-lisp-eval-depth 10000)
;;(setq debug-on-error t) 
(elpy-enable)
(require 'ess-site)
(global-set-key (kbd "RET") 'newline-and-indent)
(require 'gnuplot-mode)
