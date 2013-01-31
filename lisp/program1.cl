(defun is-multiple(base target)
	(equal (mod target base) 0))

(defun multiples(fn base under-value)
	(loop for iter from 1 to under-value do
		(if
			(equal (is-multiple base iter) t)
				(funcall fn iter))))

(multiples #'print 10 20)
