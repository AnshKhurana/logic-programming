%%  A program to flatten to a list

islist([]).
islist([_|Y]) :- islist(Y).

normlist([]).
normlist([X|Y]) :- \+ islist(X), normlist(Y). 

flatten(X, Y)    :- normlist(X), append([], X, Y).
flatten([H|T],X) :- (islist(H) -> flatten(H, FH), flatten(T, FT), append(FH, FT, X);  flatten(T, FT), append([H], FT, X)). 
