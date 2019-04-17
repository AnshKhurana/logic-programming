%% A program to generate permutations of a list

rem([], _, []).
rem([F|R], X, Ans) :- (F == X -> rem(R, X, Ans) ;  rem(R, X, Ans1), Ans = [F|Ans1]).   

ncr(L, K, R):- ncrhelper(L, K, 0, R).
ncrhelper(_, K, K, []):- !.
ncrhelper(L, K, C, R):- C<K,  member(X, L), rem(L, X, L1), C1 is C+1, ncrhelper(L1, K, C1, R1), append([X], R1, R).  
