%% Some predefined operations on lists.

first(X, [X| _]).

last(L, [L]).
last(L, [_ | X]) :- last(L, X).

prefix(P, L) :- append(P, _, L).
suffix(S, L) :- append(_, S, L).

sublist(S, L):- prefix(P, L), suffix(S,P).

