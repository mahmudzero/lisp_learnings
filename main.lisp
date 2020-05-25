#!/usr/local/bin/sbcl --script
(load "./helpers.lisp")

(defvar base)
(setq base (ret_line))

(defvar pow)
(setq pow (ret_line))

(print (expon base pow))

