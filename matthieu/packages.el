(defconst matthieu-packages
  '(doom-themes
    multiple-cursors))
  "The list of Lisp packages required by the matthieu layer.
1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if  new layer:value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'"

(defun matthieu/init-multiple-cursors ()
  (require 'multiple-cursors)
  (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
  (global-set-key (kbd "C-<down>") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-<up>") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-c C-a") 'mc/mark-all-like-this))


(defun matthieu/init-doom-themes ()
  (require 'doom-themes)
  (load-theme 'doom-one) ;; or doom-dark, etc.f
  ;; OPTIONAL
  ;; brighter source buffers
  (add-hook 'find-file-hook 'doom-buffer-mode)
  ;; brighter minibuffer when active
  (add-hook 'minibuffer-setup-hook 'doom-brighten-minibuffer)
  ;; Custtom neotree theme
  (require 'doom-neotree)
  (setq org-fontify-whole-heading-line t
        org-fontify-done-headline t
        org-fontify-quote-and-verse-blocks t)
  (add-hook 'find-file-hook 'doom-buffer-mode)
  (setq doom-neotree-enable-file-icons t)
    (add-hook 'minibuffer-setup-hook 'doom-brighten-minibuffer))

;;; packages.el ends here
 
