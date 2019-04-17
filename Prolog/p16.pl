%% A program to drop the Nth element

removen(X, N, R) :- removecn(X, 1, N, R).

removecn([], _, _, []).
removecn([H|T], C, N, R) :- (C == N -> removecn(T, 1, N, R); C1 is C+1, removecn(T, C1, N, R1), append([H], R1, R)).
