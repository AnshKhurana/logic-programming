%% A program to take a slice from the list

slice(L, I, J, S):- sliceh(L, I, J, 1, S).
sliceh([], _,_, _, []).
sliceh([_| R], I, J, C, S) :- C < I, C1 is C+1, sliceh(R, I, J, C1, S),!.
sliceh([_| _], _, J, C, []) :- C > J, !.
sliceh([F| R], I, J, C, S) :- C1 is C+1, sliceh(R, I, J, C1, S1), append([F], S1, S), !.
