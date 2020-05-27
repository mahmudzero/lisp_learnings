#!/usr/local/bin/sbcl --script
(load "~/.sbclrc")
(load "./helpers.lisp")

(ql:quickload :cl-opengl)

(gl:draw-arrays :triangles 0 3)
