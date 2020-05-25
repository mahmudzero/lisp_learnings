# LISP
## Common Lisp -- sbcl v2.0.4
### installation
#### macos
`brew install sbcl`
#

## learning the language

<br/>

### defining global var
`(defvar <varname> <value; optional>)`

<br/>

### last line of func is returned value from func
```
(defun <funcname> (arglist..)
    <func body>
)
```

<br/>

### defining local vars in function
```
(let
    (
        <varlist> => (<varname1> <value1>) (<varname2> <value2>)...
    )
    <body: scope of local vars>
)
```
