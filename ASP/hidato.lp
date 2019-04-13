% A program to solve the Number snake problem.
#const n = 3.
#show val/3.

1{val(R, C, 1..n**2)}1 :- R=1..n, C=1..n.

R1=R2 :- val(R1, _, X), val(R2, _, X).
C1=C2 :- val(_, C1, X), val(_, C2, X).


:- val(X, Y, N), val(X1, Y1, N1), N1 = N + 1, not neigh(X, Y, X1, Y1).


neigh(X, Y, X1, Y1) :- ((X1 - X)**2  + (Y1- Y)**2) = 1..2, X = 1..3, Y = 1..3, X1 = 1..3, Y1 == 1..3.

:- not val(1, 1, 1).
:- not val(2, 2, 2).
:- not val(3, 2, 8).
:- not val(1, 3, 6).

