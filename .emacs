(menu-bar-mode -1)

(setq scroll-step            1
      scroll-conservatively  10000)

(require 'package)
(package-initialize)

(require 'evil)
(evil-mode 1)
(define-key evil-normal-state-map (kbd "RET") 'org-return)
(define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)
(define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
(define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "SPC") 'scroll-up-command)


(setq org-return-follows-link t)
(require 'org)
(setq org-log-done t)

;; Adds a vim-like <leader> key
(add-to-list 'load-path "~/.emacs.d/plugins/evil-leader")
(require 'evil-leader)

;; Org-mode bindings
(define-key evil-normal-state-map "t" 'org-todo)
(define-key evil-normal-state-map (kbd "TAB") 'org-cycle)

(evil-leader/set-key-for-mode 'org-mode
  "n" 'org-next-link
  "N" 'org-previous-link
  "a" 'org-agenda
  "t" 'org-show-todo-tree)

(global-evil-leader-mode)
(evil-leader/set-leader ";")

;; Prompt for y/no instead of yes/no
(fset 'yes-or-no-p 'y-or-n-p)
