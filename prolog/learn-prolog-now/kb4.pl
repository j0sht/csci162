woman(mia).
woman(jody).
woman(yolanda).

loves(vincent, mia).
loves(marsellus, mia).
loves(pumpkin, honey_bunny).
loves(honey_bunny, pumpkin).

% Queries with variables:
% Ex) ?- woman(X).
% In Prolog, any word that begins with an upper-case letter is a variable.
% Prolog will work its way from top to bottom, and will answer:
%% X = mia ; <- type in the semicolon
%% X = jody ;
%% X = yolanda. <- prolog stops with '.' (full stop)

% Complicated queries
% Ex) ?- loves(marsellus, X), woman(X).
% Can be read as:
%  "Is there any individual X, such that Marsellus loves X and X is a woman?"
% Prolog will respond with:
%% X = mia.

% Unifying variables with information in the knowledge base is the heart
%  of Prolog. It's Prolog's ability to perform unification and return
%  the values of the variable bindings to us that is crucial.
