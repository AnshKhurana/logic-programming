% Programming with Clingo, complete graph subsets
#show clique/1.

#const n=3.

vertex (a; b; c; d; e; f; g; h).
edge (a,b; b,c; c,d; d,a; e,f; f,g; g,h; h,e; a,e; b,f; c,g; d,h; f,h).

n{clique(X): vertex(X)}n.

adj(X,Y) :- edge(X,Y).
adj(X,Y) :- edge(Y,X).

:- clique(X), clique(Y), X!=Y, not adj(X, Y).
