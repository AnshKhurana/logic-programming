%% maxNum(N,Ans) where Ans is the largest number obtained by using the digits of N.

listify(X, [X]) :- Z is div(X, 10), Z == 0.

listify(Num, L1) :- U is mod(Num, 10),  N is Num//10, append(X, [U], L1), listify(N, X), !.

delistify([], 0).
delistify(L, Ans) :-  append(P,[Last], L),  delistify(P, I), Ans is I*10 + Last.

maxNum(N, Ans) :- listify(N, L), sort(0, @>=, L, Sorted), delistify(Sorted, Ans).

    
