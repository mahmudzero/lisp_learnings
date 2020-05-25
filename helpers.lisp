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
(defun expon (base pow)
    (let
        (
            (retval)
        )
        (cond
            (
                (= (parse-integer pow) 1)
                (setq retval (parse-integer base))
            )
        )
    
        (cond
            (
                (= (parse-integer pow) 0)
                (setq retval 1)
            )
        )
        retval
    )
)

