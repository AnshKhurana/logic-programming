% Program to generate seating arrangments for guests

#const n=6.
#show sit/2.

guest(a; b; c; d; e; f).
like(a,b).
like(c,d).
like(e,f).
dislike(a,c; b,e; d,f).

1{sit(X, C)}1 :- guest(X), C = 1..n.


