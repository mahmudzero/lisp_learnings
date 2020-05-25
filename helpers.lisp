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
                (= _seq 1)
                (setq retval 1)
            )
        )
    
        (cond
            (
                (= _seq 0)
                (setq retval 1)
            )
        )

        (cond
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

