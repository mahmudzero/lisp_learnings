#!/usr/local/bin/sbcl --script
;;; scripts dont auto-load init from sbclrc
;;; this is actually stupidly done, should
;;; create project-related init script, not
;;; expecting user to have sbclrc
;;; TODO for future lul
(load "~/.sbclrc")
(load "./helpers.lisp")

;;; load cl-opengl with quicklisp
(ql:quickload :cl-opengl)
(ql:quickload :cl-glut)
(ql:quickload :cl-glu)

;;; code from
;;; https://github.com/3b/cl-opengl/blob/master/examples/redbook/lines.lisp
(defun draw_one_line (x1 y1 x2 y2)
    (gl:with-primitives :lines
        (gl:vertex x1 y1)
        (gl:vertex x2 y2)
    )
)

(defclass lines-window (glut:window)
    ()
    (:default-initargs
        :width 400 :height 150 :pos-x 100 :pos-y 100
        :mode '(:single :rgb) :title "learning lisp"
    )
)


(defmethod glut:display-window :before ((w lines-window))
    (gl:clear-color 0 0 0 0)
    (gl:shade-model :flat)
)

(defmethod glut:display ((w lines-window))
    (gl:clear :color-buffer)
    ;;; set white for all lines
    (gl:color 1 0 0)
    ;;; in 1st row, 3 lines, different stipple (dotted, dashed, etc...)
    (gl:enable :line-stipple)
    ;;; dotted
    (gl:line-stipple 1 #b0000000100000001)
    (draw_one_line 50 125 250 125)
    ;;; change line-width for second row
    (gl:color 0 1 0)
    (gl:line-width 5)
    ;;; dashed line
    (gl:line-stipple 1 #b0000000011111111)
    (draw_one_line 50 150 250 150)
    (gl:flush)
)

(defmethod glut:reshape ((w lines-window) width height)
    (gl:viewport 0 0 width height)
    (gl:matrix-mode :projection)
    (gl:load-identity)
    (glu:ortho-2d 0 width 0 height)
)

(defmethod glut:keyboard ((w lines-window) key x y)
    (declare (ignore x y))
    (when (eql key #\Esc)
        (glut:destroy-current-window)
    )
)

(defun rb-lines ()
    (glut:display-window (make-instance 'lines-window))
)

(rb-lines)
