
(defun fibonacci-by-ceiling-helper(two-ago one-ago ceiling)
	(if (< (+ two-ago one-ago) ceiling)
		(cons (+ two-ago one-ago) (fibonacci-by-ceiling-helper one-ago (+ two-ago one-ago) ceiling))))

(defun fibonacci-generator-by-ceiling(ceiling)
	(if (< 1 ceiling)
		(cons 1 (cons 1 (fibonacci-by-ceiling-helper 1 1 ceiling)))))

(defun fibonacci-by-number-of-terms-helper(two-ago one-ago number-of-terms)
	(if (> (- number-of-terms 1) 0)
		(cons (+ two-ago one-ago) (fibonacci-by-number-of-terms-helper one-ago (+ two-ago one-ago) (- number-of-terms 1)))))

(defun fibonacci-generator-by-number-of-terms(number-of-terms)
	(fibonacci-by-number-of-terms-helper 1 1 number-of-terms))
	
(defun collect-values-in-set(collection set-function)
	(if (cdr collection)
		(if (funcall set-function (car collection))
			(cons (car collection) (collect-values-in-set (cdr collection) set-function))
			(collect-values-in-set (cdr collection) set-function))
		(if (funcall set-function (car collection))
			collection)))

(defun is-number-even(number)
	(if (equal (mod number 2) 0) t))

(print (apply #'+ (collect-values-in-set (fibonacci-generator-by-ceiling 4000000) 'is-number-even)))