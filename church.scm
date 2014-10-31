; identity
(define (i)
  (lambda (x) x)
)

; bools
(define (true x y) x)
(define (false x y) y)

; predicates
(define (if cnd cns alt)
  (cnd cns alt)
)
(define (and cnda cndb)
  (cnda cndb cnda)
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

; naturals
(define (zero)
  (lambda (f)
    (lambda (x)
      x)))
(define (one)
  (lambda (f)
    (lambda (x)
      (f x))))
(define (two)
  (lambda (f)
    (lambda (x)
      (f (f x)))))
(define (three)
  (lambda (f)
    (lambda (x)
      (f (f (f x))))))

; arithmetic
(define (dbg x) (display "o"))

; n++
(define (successor n)
  (lambda (f x)
    (f (n f x)))
)

; m+n
(define (add m n)
  (lambda (f)
    (lambda (x)
      (((m)f)x) (((n)f)x)))
)

; m^n
(define (exp m n)
  (lambda (f)
    (lambda (x)
      ((((n)(m))f)x))))

