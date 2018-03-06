happy(vincent).
listens2Music(butch).

% The following rule has two goals in its body
% The comma that seperates the two goals is how conjunction
%  is expressed in Prolog.
% The following can be read as:
%  "Vincent plays air guitar if he listens to music and he is happy"
% The query ?- playsAirGuitar(vincent) would return false
playsAirGuitar(vincent):-
    listens2Music(vincent),
    happy(vincent).

% The following 2 rules, which have the same head, express logical disjunction
% Can be read as:
%  "Butch plays air guitar either if he listens to music, or if he is happy"
% The query ?- playsAirGuitar(butch) would return true
%% playsAirGuitar(butch):-
%%     happy(butch).
%% playsAirGuitar(butch):-
%%     listens2Music(butch).
% Instead of 2 rules with the same head, you can use a semicolon to represent
%  logical disjunction.
playsAirGuitar(butch):-
    happy(butch);
    listens2Music(butch).

% Extensive use of the semicolin can make Prolog code hard to read.
% However it is more efficient as Prolog only has to deal with one rule.
