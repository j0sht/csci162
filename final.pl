subseq(_, []):- !.
subseq([H|U], [H|T]):- initialsublist(U, T).
subseq([_|T], S):- subseq(T, S).
initialsublist(_, []):- !.
initialsublist([H|U], [H|T]):- initialsublist(U, T).

ncSubseq(_, []):- !.
ncSubseq([H|L1], [H|L2]):- ncSubseq(L1, L2).
ncSubseq([_|L1], [H|L2]):- ncSubseq(L1, [H|L2]).

append([], L, L).
append([H|T], L, [H|Res]):- append(T,L,Res).

interleave([], [], []):- !.
interleave(X, [], X).
interleave([], Y, Y).
interleave([X|Tx], [Y|Ty], [X,Y|Res]):- interleave(Tx,Ty,Res).
