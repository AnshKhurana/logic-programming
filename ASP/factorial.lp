% Program to compute factorial of a given number

#const n=5.
#show fac/2.
fact(0,1).

fact(N, X):- X = N * Y, fact(N-1, Y), N <= n.

fac(N, X):- fact(N, X), N=n.