/*Dilema da travessia*/
inimigos(ovelha, alface).
inimigos(lobo, ovelha).

solucao(_,[]).
solucao([X|Cauda], []) :-
    pode_atravessar(Cauda, []),
    solucao(Cauda, [X]).
solucao([X|Cauda1], [Y|Cauda2]) :-
    pode_atravessar(Cauda1,Cauda2),
    
    

pode_atravessar([X|Cauda1], [Y|Cauda2]) :-
    testa_inimigos(X, Cauda1),
    testa_inimigos(Y,Cauda2).

testa_inimigos(_, []).
testa_inimigos(A, [X|Cauda]) :-
    \+ (inimigos(A, X)),
    testa_inimigos(X, Cauda). 