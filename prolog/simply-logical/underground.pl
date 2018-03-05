% The following logical formulas, connected(station1, station2, line)
%  are called Facts. Facts express unconditional truths.
connected(bond_street, oxford_circus, central). % Must include a period
connected(oxford_circus,tottenham_court_road,central).
connected(bond_street,green_park,jubilee).
connected(green_park,charing_cross,jubilee).
connected(green_park,piccadilly_circus,piccadilly).
connected(piccadilly_circus,leicester_square,piccadilly).
connected(green_park,oxford_circus,victoria).
connected(oxford_circus,piccadilly_circus,bakerloo).
connected(piccadilly_circus,charing_cross,bakerloo).
connected(tottenham_court_road,leicester_square,northern).
connected(leicester_square,charing_cross,northern).

% The following logical formulas are called Rules.
% Rules denote conditional truths.
% In these formulas, ':-' should be read as 'if', and the comma
%  should be read as 'and'.
% Uppercase letters stand for universally quantified variables.
% nearby can be read as:
%  For any values of X, Y, Z and L
%  X is nearby Y if X is directly connected to Y via L
nearby(X, Y):- connected(X,Y,L).
% X is nearby Y if X is directly connected to Z via L,
%  and Z is directly connected to Y via L.
nearby(X, Y):- connected(X,Z,L), connected(Z,Y,L).

% Exercise 1.1
% Two stations are 'not too far' if they are on the same or different line,
%  with at most one station in between. Define rules for the predicate
%  not_too_far.
not_too_far(X, Y):- nearby(X,Y).
not_too_far(X, Y):- connected(X,Z,L), connected(Z,Y,L2).
not_too_far(X, Y):- connected(X,Z,L2), connected(Z,Y,L).
