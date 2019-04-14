%% Finding the nth member of the list


at(X, [X| _], 1).
at(X, [_| L1], N) :- N1 is N-1, at(X, L1, N1).
