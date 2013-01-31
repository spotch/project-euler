(defun is-multiple(base target)
	(equal (mod target base) 0))

(defun is-multiple-in(bases target)
	(loop for base in bases do
		(when (is-multiple base target) (return-from is-multiple-in t))))

(defun multiples(bases under-value)
	(loop for iter from 1 to under-value
		when (if
			(equal (is-multiple-in bases iter) t) iter)
		collect iter))

(defun dump(values)
	(loop for value in values do
		(print value)))

(print (apply '+ (multiples '(3 5) 999)))
