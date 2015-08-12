;;; packages.el --- pl-c++ Layer packages File for Spacemacs
;;
;; Author: Justin Holguin <justin.h.holguin@gmail.com>
;; URL: https://github.com/holguinj/spacemacs-pl-cpp
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.
(setq pl-c++-packages
    '(cc-mode))

;; List of packages to exclude.
(setq pl-c++-excluded-packages '())

(defun pl-c++--load-relative-file (file-path)
  "Loads (as elisp source) the file at filepath relative to this layer's base directory."
  (let* ((base (concat (configuration-layer/get-layer-path 'pl-c++)
                       "pl-c++/"))
         (full-path (concat base file-path)))
    (load full-path)))

(defun pl-c++/init-cc-mode ()
  "Initialize pl-c++"
  (use-package cc-mode
    :defer t
    :init
    (progn
      (pl-c++--load-relative-file "config.el")
      (defun pl-c++-hook ()
        (c-add-style "Google" google-c-style t)
        (c-set-style "Google")
        (c-toggle-hungry-state 1))
      (add-hook 'c++-mode-hook 'pl-c++-hook))))

;; For each package, define a function pl-c++/init-<package-name>
;;
;; (defun pl-c++/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
