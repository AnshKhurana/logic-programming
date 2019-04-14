%% P02: second last element of the list

sec_last(X, [X|[_]]).
sec_last(X, [_|[A | B]]) :- sec_last(X, [A|B]).
