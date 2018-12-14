(require 'package) ;; You might already have this line

(defun my-inhibit-startup-screen-always ()
  "Startup screen inhibitor for `command-line-functions`.
Inhibits startup screen on the first unrecognised option."
  (ignore (setq inhibit-startup-screen t)))

(add-hook 'command-line-functions #'my-inhibit-startup-screen-always)

(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http" "https") "://melpa.org/packages/")))
  (add-to-list 'package-archives (cons "melpa" url) t))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line


(set-default-font "Monospace-12")

(setq column-number-mode t)
(show-paren-mode 1)
(tool-bar-mode -1)

;; Automatically starting treemacs
(treemacs)


(add-hook 'after-init-hook 'global-company-mode)

(global-set-key (kbd "C-SPC") 'company-complete)


;; Making autocompletion faster...
(setq company-dabbrev-downcase 0)
(setq company-idle-delay 0)


;;(load "/usr/share/tuareg/tuareg-site-file.el")
;;(setq auto-mode-alist (cons '("\\.ml\\w?" . tuareg-mode) auto-mode-alist))
;;(autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)
;;(autoload 'camldebug "camldebug" "Run the Caml debugger" t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(minimap-automatically-delete-window nil)
 '(minimap-hide-scroll-bar t)
 '(minimap-minimum-width 20)
 '(minimap-mode t)
 '(minimap-window-location (quote right))
 '(package-selected-packages
   (quote
    (cl-format format-all clang-format auto-complete-clang auto-complete-c-headers company-try-hard company company-c-headers minimap treemacs)))
 '(treemacs-width 12))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(whitespace-tab ((t (:background "red")))))

(add-hook 'c-mode-common-hook '(lambda () (c-toggle-auto-state 1)))
(setq c-default-style "bsd" c-basic-offset 4)

;;(setq whitespace-style '(face trailing tabs lines newline empty))

;;(global-whitespace-mode)
