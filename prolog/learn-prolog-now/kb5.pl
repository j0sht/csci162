% Facts
loves(vincent, mia).
loves(marsellus, mia).
loves(pumpkin, honey_bunny).
loves(honey_bunny, pumpkin).

% Rule
% jealous can be read as:
%  "An individual X will be jealous of an individual Y if there is
%   some individual Z that X loves, and Y loves that same individual Z too."
jealous(X, Y):- loves(X, Z), loves(Y, Z).

% Query example:
% ?- jealous(marsellus, W).
% Asks: "Can you find an individual W such that Marsellus is jealous of W?"
% Answer: W = vincent
