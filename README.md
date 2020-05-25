# LISP
## Common Lisp -- sbcl v2.0.4
## installation
### macos
`brew install sbcl`

## defining global var
`(defvar <varname> <value; optional>)`

## last line of func is returned value from func
```
(defun <funcname> (arglist..)
    <func body>
)
```

## defining local vars in function
```
(let
    (
        <varlist> => (<varname1> <value1>) (<varname2> <value2>)...
    )
    <body: scope of local vars>
)
```

