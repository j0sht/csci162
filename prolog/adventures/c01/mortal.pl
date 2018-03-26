% This is the syntax for comments
% MORTAL - The first illustrative Prolog program

% A prolog program is also known as: A Prolog Database

% Prolog programs are composed of predicates.
% Each predicate is defined by its name and arity.
% (Two predicates with the same name and different arity
%  are different predicates.)

% Each predicate in a program is defined by the existence of
%  one or more clauses in the database.

% A clause can be either a fact or rule.
% The three clauses of the person/1 predicate are all facts.
% The single clauses of mortal_report/0 and mortal/1 are rules.

% Facts:
% person/1 is a predicate, specifically a fact (record with one field)
person(socrates).
person(plato).
person(aristotle).

% Rules:
% mortal/1 a rule (an assertion that takes one argument)
mortal(X):- person(X).
% mortal_report/0 a rule (procedure with no arguments)
mortal_report:-
    write('Known mortals ar:'),nl,
    mortal(X),
    write(X),nl,
    fail.
