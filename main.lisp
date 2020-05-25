#!/usr/local/bin/sbcl --script
(load "./helpers.lisp")
"
(defvar seq)
(setq seq (ret_line))

(print (fib seq))
"

(defvar base)
(defvar powr)
(setq base (ret_line))
(setq powr (ret_line))

(print (expon base powr))
