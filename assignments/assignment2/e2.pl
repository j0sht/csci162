/* 2a - Write the predicate append(L1, L2, L3), where L3 is the result of
appending list L2 to the back of list L1 */
append([], L2, L2).
append([H|T], L2, [H|L3]):- append(T, L2, L3).

/* 2b - Give a prolog predicate that takes a list and counts the number
of elements in the list. The predicate will be size(L, X), where
L is a list and X is the number of members of the list. */
size([], 0).
size([_|T], N):- size(T, X), N is X+1.

/* 2c - Give a prolog predicate that takes a list and halves it into
two sublists, the front end and the back end. The predicate
will be halves(L, LF, LB). If the list is of odd length,
the front half will be the longer half. Use the predicates append
and size. */
halves(L, LF, LB):-
    size(L, SIZE),
    X is SIZE - (SIZE // 2),
    size(LF, X),
    append(LF, LB, L), !.
