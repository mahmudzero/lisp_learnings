(defun ret_line ()
    (read-line)
)

"
    // defining global var
    (defvar <varname> <value; optional>)
    // last line of func is returned value from func
    (defun <funcname> (arglist..)
        <func body>
    )
    // defining local vars in function
    (let
        (
            <varlist> => (<varname1> <value1>) (<varname2> <value2>)...
        )
        <scope of local vars>
    )
"
(defun fib (seq)
    (let
        (
            (retval)
            (_seq seq)
        )

        (cond
            (
                (typep _seq 'string)
                (setq _seq (parse-integer _seq))
            )
        )

        (cond
            (
                (or (= _seq 1) (= _seq 0))
                (setq retval 1)
            )

            (
                (> _seq 1)
                (setq
                    retval
                    (+
                        (fib (- _seq 1))
                        (fib (- _seq 2))
                    )
                )
            )
        )

        retval
    )
)

(defun expon (base pow)
    (let
        (
            (retval)
            (_base base)
            (_pow pow)
            (i 0)
        )

        (cond
            (
                (typep _base 'string)
                (setq _base (parse-integer _base))
            )
        )

        (cond
            (
                (typep _pow 'string)
                (setq _pow (parse-integer _pow))
            )
        )
        (setq retval _base)
        (cond
            (
                (= _pow 0)
                (setq retval 1)
            )
            (
                (= _pow 1)
                (setq retval _base)
            )
            (
                t
                (loop
                    (setq retval (* retval _base))
                    (setq i (+ i 1))
                    (when (= i (- _pow 1)) (return retval))
                )
            )

        )
        retval
    )
)
