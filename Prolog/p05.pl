%% A program to reverse a list

rev([X],[X]).
rev([X | Y], L):- rev(Y, Z), append(Z, [X], L).
