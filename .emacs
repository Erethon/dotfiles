(menu-bar-mode -1)

(setq scroll-step            1
      scroll-conservatively  10000)

(require 'package)
(package-initialize)

(require 'evil)
(evil-mode 1)
(define-key evil-normal-state-map (kbd "RET") 'org-return)
(define-key evil-normal-state-map (kbd "C-l") 'evil-window-next)
(define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
(define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "SPC") 'scroll-up-command)
(define-key evil-normal-state-map (kbd "0") 'back-to-indentation)

(setq org-return-follows-link t)
(require 'org)
(setq org-log-done t)

;; Org-Journal settings
(setq org-journal-dir "~/Documents/org/journal")
(load-file "~/.emacs.d/org-journal.el")

;; Adds a vim-like <leader> key
(add-to-list 'load-path "~/.emacs.d/plugins/evil-leader")
(require 'evil-leader)

;; Org-mode bindings
(define-key evil-normal-state-map "t" 'org-todo)
(define-key evil-normal-state-map (kbd "TAB") 'org-cycle)
(load-file "~/.emacs.d/vim-agenda.el")

;; Org-mode settings
(setq org-agenda-files (list "~/Documents/org/index.org"
			     "~/Documents/org/personal.org"
			     "~/Documents/org/work.org"))

;;(setq org-agenda-window-setup (quote current-window))

(evil-leader/set-key-for-mode 'org-mode
  "n" 'org-next-link
  "N" 'org-previous-link
  "a" 'org-agenda
  "t" 'org-show-todo-tree
  "A" 'org-archive-subtree-default)

(global-evil-leader-mode)
(evil-leader/set-leader ";")

;; Prompt for y/no instead of yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;; Enable org-babel for sh and python
(org-babel-do-load-languages
  'org-babel-load-languages
  '((sh . t)
    (python . t)
    (dot . t)
   ))

;; General settings
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Use /tmp for temp and backup files
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; (add-to-list 'custom-theme-load-path "~/Code/emacs/monokai-emacs")
;; (load-theme 'monokai t)
