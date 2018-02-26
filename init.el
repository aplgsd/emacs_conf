;; cl - Common Lisp Extension
(require 'cl)

(when (>= emacs-major-version 24)
     (require 'package)
     (package-initialize)
     (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.org/packages/"))))


;; turn off tool-bar
(tool-bar-mode -1)

;; turn off scroll-bar
(scroll-bar-mode -1)

;; cusor style
(setq-default cursor-type 'bar)

;; full screen
(setq initial-frame-alist (quote ((fullscreen . maximized))))


(global-set-key (kbd "M-?") 'help-command)
;;(global-set-key "\C-h" 'delete-backward-char)

;; line number
(global-linum-mode t)

;; high lighting current line
(global-hl-line-mode t)

;; close welcome page
(setq inhibit-splash-screen t)

;; open recent file
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)

;; the next window
(global-set-key (kbd "C-c C-n") 'other-window)

;; the previous windows
(defun other-window-backward(&optional n)
  "Select Nth previous window."
  (interactive "p")
  ;;(if n
  ;;    (other-window (- n))
  ;;  (ohter-window -1)))
  (other-window (- (perfix-numeric-value n))))

(global-set-key (kbd "C-c C-p") 'other-window-backward)

;; close emacs ring bell
(setq ring-bell-function 'ignore)

;; scroll line ahead
(defun scroll-n-line-ahead(&optional n)
  "Scroll ahead N lines (1 by default)."
  (interactive "P")
  (scroll-ahead (perfix-numeric-value n)))


;; scroll line behind
(defun scroll-n-line-behid(&optional n)
  "Scroll behind N lines (1 by default)."
  (interactive "P")
  (scroll-behind (perfix-numeric-value n)))

(global-set-key (kbd "C-q") scroll-n-line-ahead)

(global-set-key (kbd "C-z") scroll-n-line-behind)

