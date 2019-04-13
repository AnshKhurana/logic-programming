%% A program to solve the Knight's tour problem

#const n=8.
#show move/2.

valid_pos(1..n, 1..n).

jump(x1, y1, x2, y2) :-
