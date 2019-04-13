% Program to find the schur numbers
#const n=10.
#const r=3.
#show mem/2.

1{mem(X, 1..r)}1 :- X = 1..n.

:- mem(A, X), mem(B, X), mem(C, X), A + B = C.
