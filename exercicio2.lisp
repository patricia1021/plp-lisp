(defun Conta_Seguidos (X L)
    (cond ((null L) nil)
  ((null (cdr L)) 1)
    ((equal X (car L))
      (+ 1 (Conta_Seguidos X (cdr L))))
      (t 0))) 

(defun Remover_Seguidos (X L) ;tem como argumento um elemento X e uma lista L
(cond ((null L) nil) ;se a lista for vazia, então retorna vazio
((equal X (car L)) ;verificamos se o elemento X é igual a cabeça da lista L
    (Remover_Seguidos X (cdr L))) ;então chamamos recursivamente a função remover-seguidos com o resto da lista
    (t L)))   ; senão retorna o que sobrou da lista

(defun Monta_Pares(L) ;a função recebe uma lista L
    (cond ((null L) nil) ;verifica se a lista é vazia, se sim, retorna vazio
    (t (cons (list (Conta_Seguidos (car L) L) (car L)) ; monta um par que é a quantidade de elementos seguidos e o próprio elemento, por exemplo (4 a)
                (Monta_Pares (Remover_Seguidos (car L) L)))))) ;chama recursivamente o monta-pares, porém exclui os elementos já contados


;(print(Monta_Pares '(a a a a b c c a a d e e e e))) ;((4 a) (1 b) (2 c) (2 a) (1 d) (4 e))
