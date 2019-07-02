;Exercício 1


(defun Desparentize (L)
    (cond ((null L) nil) 
    ((atom L)(list L))
    ((and (listp L) (equal nil (car L))) 			
		(cons nil (Desparentize(cdr L)))) 
        (t (append (Desparentize(car L)) (Desparentize (cdr L))))))

(print (desparentize '( (1 (2) 3) 3)))

(defun conta-elem (elem lista)
    (
     cond ((null lista) 0)
          ((equal (car lista) elem) (+ 1 (conta-elem elem (cdr lista))))
          (t (conta-elem elem (cdr lista)))
    )
)
;(print (conta-elem 3 '(1 2 3 3)))

(defun apaga-elem (elem lista)
    (cond
        ((null lista) NIL)
        ((equal (car lista) elem) (apaga-elem elem (cdr lista)))
        (t (cons (car lista) (apaga-elem elem (cdr lista))))
    )
)
;(print (apaga-elem 3 '(1 2 3 4 3)))

(defun monta-pares (lista)
    (cond
        ((null lista) NIL)
        (t (cons (list (car lista) (conta-elem (car lista) lista)) (monta-pares (apaga-elem (car lista) (cdr lista)))))
    )
)
;(print (monta-pares '(1 2 3 3)))

(defun predicado-principal(lista)
	(monta-pares(desparentize lista)))

;(print (predicado-principal '(a b z x 4.6 (a x) () (5 z x) () )))


;; (defvar lista)

;; ; falta testar esse começo aqui e arrumar para aparecer os ()
;; (defun predicado-principal ()
;; (prin1 "Entre com a lista")
;; (setq lista (read))
;; (desparentize lista)
;; (monta-pares lista)
;; )


;OUTRA FORMA DE FAZER

;(defun Desparentize (L)
;    (cond ((null L) nil) 
;    ((atom L)(list L))
;    ((and (listp L) (equal nil (car L))) 			
;		(cons nil (Desparentize(cdr L)))) 
;        (t (append (Desparentize(car L)) (Desparentize (cdr L))))))

;(defun Conta (X L)
;	(cond ((null L) nil)
;    ((and (null (cdr L)) (equal X (car L)) 1))
;	((null (cdr L)) 0)       				  
;	((equal X (car L)) 						
;		(+ 1 (Conta X (cdr L))))    
;	    (t (+ (Conta X (cdr L))))))

;(defun Monta_Pares(L)
;	(cond ((null L) nil)
;	(t (cons (list (car L) (Conta (car L) L))
;		(Monta_Pares (Remove (car L) (cdr L)))))))

;(defun Main(L)
;	(Monta_Pares (Desparentize L)))




