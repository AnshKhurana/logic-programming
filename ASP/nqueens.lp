% A program to solve the nqueens problem

#const n = 8.

n{queen(1..n, 1..n)}n.

:- queen(R, C), queen(R1, C1), R1 = R, C != C1 .
:- queen(R, C), queen(R1, C1), C1 = C, R != R1.
:- queen(R, C), queen(R1, C1), |C1 - C| = |R1 - R|, R != R1.

