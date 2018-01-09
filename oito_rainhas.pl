/*verifica se ha ataque*/

sem_ataque(_/_,[]).
sem_ataque(X/Y,[X1/Y1|Cauda]) :-
    X =\= X1,
    Y =\= Y1,
    X-Y =\= X1-Y1,
    X+Y =\= X1+Y1,
    sem_ataque(X/Y, Cauda).

solucao([]).
solucao([X/Y|Cauda]) :-
    solucao(Cauda),
    member(Y,[1,2,3,4]),
    sem_ataque(X/Y, Cauda).

member(_,[]) :- fail.
member(X,[X|_]).
member(X,[_|T]) :- member(X,T).