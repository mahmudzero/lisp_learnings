#!/usr/local/bin/sbcl --script
(load "./helpers.lisp")

(defvar seq)
(setq seq (ret_line))

(print (fib (parse-integer seq)))

