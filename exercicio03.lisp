; lista-pares recebe a lista com os pares
; o primeiro par vai para lista-seguidos
; lá, ele faz com que o elemento apareça o número de vezes que está na cabeça do par 

(defun lista-pares(L) ;a função lista-pares irá destrinchar todos os pares inputados pelo usuário
	(cond ((null L) nil)
	(t (append (lista-seguidos (car L)) (lista-pares (cdr L)))))) ; irá concatenar os valores destrinchados e formar uma lista com todos elementos 


(defun lista-seguidos (L) ;tem como argumento uma lista L
	(cond ((null L) nil) ;se a lista for vazia, retorna vazio
	((/= (car L) 0) ;verifica se a cabeça da lista é diferente de zero 					
	    (append (cdr L) (lista-seguidos (cons (- (car L ) 1) (cdr L))))))) ;concate a cauda da lista com o resultado da recursão da função 
                            ; se entrarmos com 4 "as", a função irá escrever um a, então vai chamar a mesma funçao decrementando o par, até o par virar 0., no final, teremos (4 a) se convertendo em (a a a a)
				; pega um parzinho e monta.. por exemplo o 4 a

;(print(lista-pares '((4 a) (1 b) (2 c) (2 a) (1 d) (4 e)))) ;(A A A A B C C A A D E E E E)


