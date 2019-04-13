% A program to solve the p235 problem

#const n = 24.

p235(n):- n = X*Y*Z, X=1..n, Y=1..n, Z=1..n, pow2(X), pow3(Y), pow5(Z).

% fac(n, I) :- n\I = 0, I = 1..n.

pow2(X) :- X = 1.
pow2(X) :- pow2(Y), X = 2*Y.

pow3(X) :- X = 1.
pow3(X) :- pow3(Y), X = 3*Y.

pow5(X) :- X = 1.
pow5(X) :- pow5(Y), X = 5*Y.

% :- p235(n), fac(n, I), not pow2(I), not pow3(I), not pow5(I).