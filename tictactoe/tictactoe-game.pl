%% pra ganhar
moveIA([a,o,o,_,_,_,_,_,_],1).
moveIA([o,a,o,_,_,_,_,_,_],2).
moveIA([o,o,a,_,_,_,_,_,_],3).

moveIA([_,_,_,a,o,o,_,_,_],4).
moveIA([_,_,_,o,a,o,_,_,_],5).
moveIA([_,_,_,o,o,a,_,_,_],6).

moveIA([_,_,_,_,_,_,a,o,o],7).
moveIA([_,_,_,_,_,_,o,a,o],8).
moveIA([_,_,_,_,_,_,x,x,o],9).

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


moveIA([o,_,a,_,x,_,_,_,x],3).
moveIA([x,_,_,_,o,_,_,_,x],6).

moveIA([x,_,_,_,o,x,_,_,_],2).
moveIA([x,_,_,_,o,_,_,x,_],4).

moveIA([_,_,x,x,o,_,_,_,_],2).
moveIA([_,_,x,_,o,_,_,x,_],6).

moveIA([_,x,_,_,o,_,x,_,_],4).
moveIA([_,_,_,x,o,_,x,_,_],8).

moveIA([_,x,_,_,o,_,_,_,x],6).
moveIA([_,_,_,_,o,x,_,_,x],8).


vitoria(Tabuleiro, Jogador):- 
    Tabuleiro= [Jogador,Jogador,Jogador,_,_,_,_,_,_];
    Tabuleiro= [_,_,_,Jogador,Jogador,Jogador,_,_,_];
    Tabuleiro= [_,_,_,_,_,_,Jogador,Jogador,Jogador];
    Tabuleiro= [Jogador,_,_,Jogador,_,_,Jogador,_,_];
    Tabuleiro= [_,Jogador,_,_,Jogador,_,_,Jogador,_];
    Tabuleiro= [_,_,Jogador,_,_,Jogador,_,_,Jogador];
    Tabuleiro= [Jogador,_,_,_,Jogador,_,_,_,Jogador];
    Tabuleiro= [_,_,Jogador,_,Jogador,_,Jogador,_,_].