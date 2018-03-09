% 1. Write a list predicate called ismember(X,L) that is true if X is in the
%    list L, false (ununifiable) otherwise.
ismember(X, [X|_]):- !.
ismember(X, [_|T]):- ismember(X, T).

% 2. Write a list predicate called remove(X, L, L1) that removes the first
%    instance of X in L, leaving L1.
remove(X, [X|T], T):- !.
remove(X, [H|T], [H|Tx]):- remove(X, T, Tx).

% 3. Write a list predicate called removeAll(X, L, L1) that removes all
%    instances of X in L, leaving L1.
removeAll(_, [], []):- !.
removeAll(X, [X|T], L2):- removeAll(X, T, L2), !.
removeAll(X, [H|T], [H|Tx]):- removeAll(X, T, Tx).

% 4. Write a list predicate called attach(X, L, LX) where Lx is the list
%    that results from attaching X to the end of L.
attach([], X, [X]).
attach([H|T], X, [H|Tx]):- attach(T, X, Tx).

% 5. Write a list predicate called dp(L1, L2, L3) so that if L1 and L2
%    contain numbers, then L3 = [L1[0]*L2[0], ..., L1[N]*L2[N]]
%    Assume that L1 and L2 are two lists of the same length.
%    Use number(X) to make sure that the list element is a number before
%    using arithmetic operations on it.
dp([], [], []):- !.
dp([N1|N1S], [N2|N2S], [R|T]):-
    number(N1),
    number(N2),
    R is N1 * N2,
    dp(N1S, N2S, T).

% 6. Write a predicate max(L, X) that places the maximum value in the
%    list L into the variable X. On an empty list it should just fail.
%    Note that >= can be used for "greater than or equal to".
accMax([], R, R):- !.
accMax([H|T], A, R):-
    A >= H,
    accMax(T, A, R).
accMax([H|T], A, R):-
    H > A,
    accMax(T, H, R).

max([X], X):- !.
max(L, X):-
    L = [H|_],
    accMax(L, H, X), !.
