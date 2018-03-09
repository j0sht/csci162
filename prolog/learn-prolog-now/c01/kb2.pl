% Facts
happy(yolanda).
listens2Music(mia).

% The following are Rules.
% Rules state information that is conditionally true of the situation
%  of interest.

% Yolanda listens to music if she is happy
listens2Music(yolanda):- happy(yolanda).
playsAirGuitar(mia):- listens2Music(mia).
playsAirGuitar(yolanda):- listens2Music(yolanda).

% ':-' should be read as "if", or "is implied by"
% Part on the left side of ':-' is called the head of the rule
% Part on the right side is called the body.
% In general, rules say:
%  If the body of the rule is true, then the head of the rule is true too.

% KEY POINT: MODUS PONENS
%  If a knowledge base contains a rule [head :- body], and Prolog knows
%   that body follows from the information in the knowledge base, then
%   Prolog can infer 'head'

% Facts and Rules contained in a knowledge base are called clauses.
% Thus, kb2 contains 5 clauses (3 rules, 2 facts)
% kb2 contains 3 predicates (or procedures)
%  - listens2Music, happy, playsAirGuitar

% It is a good idea to think about Prolog programs in terms of the
%  predicates they contain.
