;; Adding the submodules to loadpath

(setq load-path
      (append load-path
	      (let ((default-directory
		      (file-name-directory
		       (or load-file-name
			   buffer-file-name))))
		(mapcar
		 (lambda (x)
		   (concat (file-name-as-directory default-directory)
			   x))
		 (seq-filter
		  (lambda (x)
		    (and (file-directory-p x)
			 (not (string-prefix-p "." x))))
		  (directory-files default-directory))))))

(provide 'myelpa-setup)
