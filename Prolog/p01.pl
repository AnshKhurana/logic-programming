%% P01: Last element of a list

my_last(L, [L]).
my_last(L, [_| L1]) :- my_last(L, L1).
