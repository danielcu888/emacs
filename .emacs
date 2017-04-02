(custom-set-variables
 ;; custom-set-variables was added by Custom.                                                                                                                                                                                                                                                               
 ;; If you edit it by hand, you could mess it up, so be careful.                                                                                                                                                                                                                                            
 ;; Your init file should contain only one such instance.                                                                                                                                                                                                                                                   
 ;; If there is more than one, they won't work right.                                                                                                                                                                                                                                                       
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.                                                                                                                                                                                                                                                                   
 ;; If you edit it by hand, you could mess it up, so be careful.                                                                                                                                                                                                                                            
 ;; Your init file should contain only one such instance.                                                                                                                                                                                                                                                   
 ;; If there is more than one, they won't work right.                                                                                                                                                                                                                                                       
 )

;; inhibit tabs                                                                                                                                                                                                                                                                                             
(setq-default indent-tabs-mode nil)

;; remove trailing whitespace                                                                                                                                                                                                                                                                               
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;set linux style indentation                                                                                                                                                                                                                                                                               
(setq c-default-style "linux" c-basic-offset 2)

;;add following directories to load-path                                                                                                                                                                                                                                                                    
(add-to-list 'load-path "~/.emacs.d/lisp/")

;;enable column-marker.el                                                                                                                                                                                                                                                                                   
(require 'column-marker)

;;ensure we use c++ mode for files with specific extensions                                                                                                                                                                                                                                                 
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\Doxyfile\\'" . python-mode))


;; Highlight column 80 in foo mode.                                                                                                                                                                                                                                                                         
;; (add-hook 'before-save-hook (lambda () (interactive) (column-marker-1 80)))                                                                                                                                                                                                                              

;; Use `C-c m' interactively to highlight with face `column-marker-1'.                                                                                                                                                                                                                                      
(global-set-key [?\C-c ?m] 'column-marker-1)

;;require column-number-mode                                                                                                                                                                                                                                                                                
(setq column-number-mode t)
