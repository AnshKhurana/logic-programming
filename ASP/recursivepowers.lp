% A program to generate powers of 2

#const n=8.

pow2(X) :- X = 1.
pow2(X) :- pow2(Y), X = 2*Y, X <= 2**n.
