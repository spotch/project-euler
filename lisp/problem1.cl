(defun create-index(current ceiling fn)
	(if (< current ceiling)
		(if (funcall fn current)
			(cons current (create-index (+ current 1) ceiling fn))
			(create-index (+ current 1) ceiling fn))))

(defun is-multiple-of-three-five(subject)
	(cond
		((equal (mod subject 3) 0) t)
		((equal (mod subject 5) 0) t)))

(print (apply #'+ (create-index 1 1000 'is-multiple-of-three-five)))
