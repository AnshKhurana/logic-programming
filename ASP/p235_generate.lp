% A program to generate the first n, p235 numbers

#const n=10.

p235(1,1).
p235(X, I):- I=1..n, facs(X, P1, P2, P3), I = P1 + P2 + P3. 