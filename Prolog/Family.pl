man(adam).
man(bruce).
man(tony).
woman(eve).
woman(pepper).

father(adam, apple).
father(adam, tim).
father(bruce, adam).

wife(eve, adam).
wife(pepper, tony).

brother(adam, tony).
brother(tim, apple).

is_brother(X, Y) :- brother(X, Y).
is_brother(X, Y) :- brother(Y, X).


uncle(U, X) :- father(Z, X), is_brother(U, Z).

