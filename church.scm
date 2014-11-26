#lang scheme

; identity
(define (i)
  (lambda (x) x)
)

; booleans
(define (true x y) x)
(define (false x y) y)

; logical operations
(define (if cnd cns alt)
  (cnd cns alt)
)
(define (and cnda cndb)
  (cnda cndb cnda)
)
(define (or cnda cndb)
  (cnda true cndb)
)
(define (not cond)
  (cond false true)
)
(define zero?
  (lambda (f)
    ((f (lambda (x) false)) true))
)

; data
(define (cons x y)
  (lambda (m) (m x y))
)
(define (head z)
  (z true)
)
(define (tail z)
  (z false)
)

; debug
;  e.g. (((mul-church two three) inc) 0) = 6
(define (inc n) (+ n 1))

; naturals
;  e.g. ((n inc) 1)
(define zero
  (lambda (f)
    (lambda (x)
      x)))
(define one
  (lambda (f)
    (lambda (x)
      (f x))))
(define two
  (lambda (f)
    (lambda (x)
      (f (f x)))))
(define three
  (lambda (f)
    (lambda (x)
      (f (f (f x))))))

(define (compose f g)
  (lambda (x)
    (f (g x))))


; successor
(define (succ n)
  (lambda (f x)
    (f (n f x))))

; addition
(define (add-church m n)
  (lambda (f)
    (lambda (x)
      ((m f) ((n f)x)))))

; multiplication
(define (mul-church m n)
  (lambda (f)
    (lambda (x)
      ((m (n f))x))))

; exponentiation
(define (exp-church m n)
  (lambda (f)
    (lambda (x)
      ((((n)(m))f)x))))

; predecessor
;  PRED := λnfx.n (λgh.h (g f)) (λu.x) (λu.u)
;  e.g. (((predecessor two) inc) 0) = 1
(define predecessor
  (lambda (n)
    (lambda (f)
      (lambda (x)

      )
    )
  )
)

; (λgh.h (g f)) = 
; (λu.x) = (lambda (u) x)
; (λu.u) = (lambda (u) u)

















;
