% A program to generate change for a given amount using some set of coins
% (Generates all possible change)

#show used/2.
#show coins/1.
#const amount=10.

coin(1;2;5).

1{used(I, 0..amount/I)}1 :- coin(I).

coins(K) :- #sum{J,I : used(I, J)} = K.

:- amount != #sum{I*J, I : used(I,J)}.
