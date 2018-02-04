%
%
%MINIMAX
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% minimax(Pos, BestNextPos, Val)
% Pos is a position, Val is its minimax value.
% Best move from Pos leads to position BestNextPos.
minimax(Pos, BestNextPos, Val) :-                     % Pos has successors
    bagof(NextPos, move(Pos, NextPos), NextPosList),
    best(NextPosList, BestNextPos, Val), !.

minimax(Pos, _, Val) :-                     % Pos has no successors
    utility(Pos, Val).


best([Pos], Pos, Val) :-
    minimax(Pos, _, Val), !.

best([Pos1 | PosList], BestPos, BestVal) :-
    minimax(Pos1, _, Val1),
    best(PosList, Pos2, Val2),
    betterOf(Pos1, Val1, Pos2, Val2, BestPos, BestVal).



betterOf(Pos0, Val0, _, Val1, Pos0, Val0) :-   % Pos0 better than Pos1
    min_to_move(Pos0),                         % MIN to move in Pos0
    Val0 > Val1, !                             % MAX prefers the greater value
    ;
    max_to_move(Pos0),                         % MAX to move in Pos0
    Val0 < Val1, !.                            % MIN prefers the lesser value

betterOf(_, _, Pos1, Val1, Pos1, Val1).        % Otherwise Pos1 better than Pos0


%
%
%ENGINE
%
%
%%%%%%%%%%%%%%%%%%

% move(+Pos, -NextPos)
% True if there is a legal (according to rules) move from Pos to NextPos.
move([X1, play, Board], [X2, win, NextBoard]) :-
    nextPlayer(X1, X2),
    move_aux(X1, Board, NextBoard),
    winPos(X1, NextBoard), !.

move([X1, play, Board], [X2, draw, NextBoard]) :-
    nextPlayer(X1, X2),
    move_aux(X1, Board, NextBoard),
    drawPos(X1,NextBoard), !.

move([X1, play, Board], [X2, play, NextBoard]) :-
    nextPlayer(X1, X2),
    move_aux(X1, Board, NextBoard).

% move_aux(+Player, +Board, -NextBoard)
% True if NextBoard is Board whith an empty case replaced by Player mark.
move_aux(P, [0|Bs], [P|Bs]).

move_aux(P, [B|Bs], [B|B2s]) :-
    move_aux(P, Bs, B2s).


% min_to_move(+Pos)
% True if the next player to play is the MIN player.
min_to_move([o, _, _]).

% max_to_move(+Pos)
% True if the next player to play is the MAX player.
max_to_move([x, _, _]).

% utility(+Pos, -Val) :-
% True if Val the the result of the evaluation function at Pos.
% We will only evaluate for final position.
% So we will only have MAX win, MIN win or draw.
% We will use  1 when MAX win
%             -1 when MIN win
%              0 otherwise.
utility([o, win, _], 1).       % Previous player (MAX) has win.
utility([x, win, _], -1).      % Previous player (MIN) has win.
utility([_, draw, _], 0).

% winPos(+Player, +Board)
% True if Player win in Board.
winPos(P, [X1, X2, X3, X4, X5, X6, X7, X8, X9]) :-
    equal(X1, X2, X3, P) ;    % 1st line
    equal(X4, X5, X6, P) ;    % 2nd line
    equal(X7, X8, X9, P) ;    % 3rd line
    equal(X1, X4, X7, P) ;    % 1st col
    equal(X2, X5, X8, P) ;    % 2nd col
    equal(X3, X6, X9, P) ;    % 3rd col
    equal(X1, X5, X9, P) ;    % 1st diag
    equal(X3, X5, X7, P).     % 2nd diag

% drawPos(+Player, +Board)
% True if the game is a draw.
drawPos(_,Board) :-
    \+ member(0, Board).


% equal(+W, +X, +Y, +Z).
% True if W = X = Y = Z.
equal(X, X, X, X).


%
%
% GAME
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% bestMove(+Pos, -NextPos)
% Compute the best Next Position from Position Pos
% with minimax or alpha-beta algorithm.
bestMove(Pos, NextPos) :-
    minimax(Pos, NextPos, _).