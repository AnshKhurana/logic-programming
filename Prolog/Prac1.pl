%% maxNum(N, Ans) finds the maximum number obtained by rotating the digits of N.

maxNum(N, Ans):- rotnum(N, Acc), max(Acc, Ans).

pow10(N,0) :- N < 10.
pow10(N, X):- pow10(N//10, Y), X is Y + 1, !.

rot1left(A, B):- U is mod(A, 10), 

rotnum(Num, Acc) :- pow10(Num, Len),  rotnum_helper(Num, [Num], Len). 
rotnum_helper(_, _, N) :- N is 0.
rotnum_helper(Num, Acc, Iter) :- Iter1 is Iter - 1, rot1left(Num, Res), rotnum_helper(Res, [Res | Acc], Iter1).


