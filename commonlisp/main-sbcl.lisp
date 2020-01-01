(defun fibonacci (n)
    (if (or (= n 1) (= n 2))
        1
        (+ (fibonacci (- n 1)) (fibonacci (- n 2)))))

(defun main()
    (format t "~A~%" (fibonacci 40)))

(sb-ext:save-lisp-and-die "main-sbcl"
                          :toplevel #'main
                          :executable t)


