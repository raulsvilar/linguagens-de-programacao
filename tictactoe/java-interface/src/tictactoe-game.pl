%% pra ganhar
moveIA([a,o,o,_,_,_,_,_,_],1).
moveIA([o,a,o,_,_,_,_,_,_],2).
moveIA([o,o,a,_,_,_,_,_,_],3).

moveIA([_,_,_,a,o,o,_,_,_],4).
moveIA([_,_,_,o,a,o,_,_,_],5).
moveIA([_,_,_,o,o,a,_,_,_],6).

moveIA([_,_,_,_,_,_,a,o,o],7).
moveIA([_,_,_,_,_,_,o,a,o],8).
moveIA([_,_,_,_,_,_,o,o,a],9).

moveIA([a,_,_,o,_,_,o,_,_],1).
moveIA([o,_,_,a,_,_,o,_,_],4).
moveIA([o,_,_,o,_,_,a,_,_],7).

moveIA([_,a,_,_,o,_,_,o,_],2).
moveIA([_,o,_,_,a,_,_,o,_],5).
moveIA([_,o,_,_,o,_,_,a,_],8).

moveIA([_,_,a,_,_,o,_,_,o],3).
moveIA([_,_,o,_,_,a,_,_,o],6).
moveIA([_,_,o,_,_,o,_,_,a],9).

moveIA([a,_,_,_,o,_,_,_,o],1).
moveIA([o,_,_,_,a,_,_,_,o],5).
moveIA([o,_,_,_,o,_,_,_,a],9).

moveIA([_,_,a,_,o,_,o,_,_],3).
moveIA([_,_,o,_,a,_,o,_,_],5).
moveIA([_,_,o,_,o,_,a,_,_],7).

%% pra não perder
%% jogada inicial
moveIA([a,a,a,a,x,a,a,a,a],1).
moveIA([a,x,a,a,a,a,a,a,a],1).
moveIA([a,a,a,x,a,a,a,a,a],1).
moveIA([a,a,a,a,a,x,a,a,a],5).
moveIA([a,a,a,a,a,a,a,x,a],5).
moveIA([x,a,a,a,a,a,a,a,a],5).
moveIA([a,a,x,a,a,a,a,a,a],5).
moveIA([a,a,a,a,a,a,x,a,a],5).
moveIA([a,a,a,a,a,a,a,a,x],5).

%% jogada pra impedir vitoria
moveIA([a,x,x,_,_,_,_,_,_],1).
moveIA([x,a,x,_,_,_,_,_,_],2).
moveIA([x,x,a,_,_,_,_,_,_],3).

moveIA([_,_,_,a,x,x,_,_,_],4).
moveIA([_,_,_,x,a,x,_,_,_],5).
moveIA([_,_,_,x,x,a,_,_,_],6).

moveIA([_,_,_,_,_,_,a,x,x],7).
moveIA([_,_,_,_,_,_,x,a,x],8).
moveIA([_,_,_,_,_,_,x,x,a],9).

moveIA([a,_,_,x,_,_,x,_,_],1).
moveIA([x,_,_,a,_,_,x,_,_],4).
moveIA([x,_,_,x,_,_,a,_,_],7).

moveIA([_,a,_,_,x,_,_,x,_],2).
moveIA([_,x,_,_,a,_,_,x,_],5).
moveIA([_,x,_,_,x,_,_,a,_],8).

moveIA([_,_,a,_,_,x,_,_,x],3).
moveIA([_,_,x,_,_,a,_,_,x],6).
moveIA([_,_,x,_,_,x,_,_,a],9).

moveIA([a,_,_,_,x,_,_,_,x],1).
moveIA([x,_,_,_,a,_,_,_,x],5).
moveIA([x,_,_,_,x,_,_,_,a],9).

moveIA([_,_,a,_,x,_,x,_,_],3).
moveIA([_,_,x,_,a,_,x,_,_],5).
moveIA([_,_,x,_,x,_,a,_,_],7).

%% correção segunda jogada de canto
moveIA([o,a,a,a,x,a,a,a,x],3).
moveIA([x,a,a,a,o,a,a,a,x],6).

moveIA([x,a,a,a,o,x,a,a,a],2).
moveIA([x,a,a,a,o,a,a,x,a],4).

moveIA([a,a,x,x,o,a,a,a,a],2).
moveIA([a,a,x,a,o,a,a,x,a],6).

moveIA([a,x,a,a,o,a,x,a,a],4).
moveIA([a,a,a,x,o,a,x,a,a],8).

moveIA([a,x,a,a,o,a,a,a,x],6).
moveIA([a,a,a,a,o,x,a,a,x],8).

%% cantos extremos
moveIA([x,a,a,a,o,a,a,a,x],4).
moveIA([a,a,x,a,o,a,x,a,a],4).


%% correção segunda jogada de meio de linha (meio com meio)

moveIA([o,x,a,a,a,x,a,a,a],5).
moveIA([a,x,a,a,o,x,a,a,a],3).

moveIA([o,x,a,x,a,a,a,a,a],5).
moveIA([a,x,a,x,o,a,a,a,a],1).

moveIA([o,a,a,a,a,x,a,x,a],5).
moveIA([a,a,a,a,o,x,a,x,a],9).

moveIA([o,a,a,x,a,a,a,x,a],5).
moveIA([a,a,a,x,o,a,a,x,a],9).

%% segunda jogada - meio para cantos
moveIA([o,x,a,a,a,a,a,a,x],5).
moveIA([o,x,a,a,a,a,x,a,a],5).

moveIA([o,x,a,a,a,x,a,a,a],5).

moveIA([o,a,a,a,a,x,x,a,a],5).
moveIA([a,a,a,a,o,x,x,a,a],8).

moveIA([o,a,x,a,a,a,x,a,a],5).

moveIA([o,a,x,x,a,a,a,a,a],5).

moveIA([o,a,a,x,a,a,a,a,x],5).
moveIA([a,a,a,x,o,a,a,a,x],8).

%%orreção segunda jogada de meio de linha, linha 2
moveIA([a,a,a,x,_,x,a,a,a],1).
moveIA([a,a,a,_,x,x,a,a,a],1).
moveIA([a,a,a,x,x,_,a,a,a],1).
moveIA([a,a,a,_,x,x,a,a,a],1).


moveIA([x,x,_,a,a,a,a,a,a],5).
moveIA([_,x,_,a,a,a,a,a,a],5).
moveIA([x,_,x,a,a,a,a,a,a],5).
moveIA([_,x,x,a,a,a,a,a,a],5).

moveIA([a,a,a,a,a,a,_,x,x],5).
moveIA([a,a,a,a,a,a,x,x,_],5).
moveIA([a,a,a,a,a,a,x,_,x],5).
moveIA([a,a,a,a,a,a,_,x,x],4).

%correção coluna
moveIA([x,a,a,_,a,a,x,a,a], 4).
moveIA([x,a,a,x,a,a,_,a,a], 5).
moveIA([_,a,a,x,a,a,x,a,a], 5).


moveIA([a,x,a,a,_,a,a,x,a], 4).
moveIA([a,x,a,a,x,a,a,_,a], 5).
moveIA([a,_,a,a,x,a,a,x,a], 5).


moveIA([a,a,x,a,a,_,a,a,x], 4).
moveIA([a,a,x,a,a,x,a,a,_], 5).
moveIA([a,a,_,a,a,x,a,a,x], 5).

moveIA([x,a,a,a,x,a,a,a,_], 8).
moveIA([x,a,a,a,_,a,a,a,x], 4).
moveIA([_,a,a,a,x,a,a,a,x], 2).


moveIA([a,a,x,a,x,a,_,a,a], 8).
moveIA([a,a,x,a,_,a,x,a,a], 4).
moveIA([a,a,_,a,x,a,x,a,a], 2).



vitoria(Tabuleiro, Jogador):-
    Tabuleiro= [Jogador,Jogador,Jogador,_,_,_,_,_,_];
    Tabuleiro= [_,_,_,Jogador,Jogador,Jogador,_,_,_];
    Tabuleiro= [_,_,_,_,_,_,Jogador,Jogador,Jogador];
    Tabuleiro= [Jogador,_,_,Jogador,_,_,Jogador,_,_];
    Tabuleiro= [_,Jogador,_,_,Jogador,_,_,Jogador,_];
    Tabuleiro= [_,_,Jogador,_,_,Jogador,_,_,Jogador];
    Tabuleiro= [Jogador,_,_,_,Jogador,_,_,_,Jogador];
    Tabuleiro= [_,_,Jogador,_,Jogador,_,Jogador,_,_].