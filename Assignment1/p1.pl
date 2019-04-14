%% 1. crdnlty(M, N) which means N is the number of distinct elements in multiset M.

%% ?- crdnlty([3,1,2,3],N). gives N = 3 .


crdnlty(M, N) :- sort(M, S), length(S, N).


%% 2. crdnltyHigh(M, K, N) means there are N distinct elements in multiset M that occur K or more times.

%% ?- crdnltyHigh([3,1,2,3], 4, N). gives N = 0 .

%% ?- crdnltyHigh([3,1,2,3,1,1,1,1,1], 4, N). gives N = 1 .

occ_count([], _, 0) :- !.
occ_count([F | R], H, N) :- (F == H -> occ_count(R, H, N1), N is N1+1 ; occ_count(R, H, N)).
counter_helper(_, [], Agg, Agg) :- !.
counter_helper(M, [H | T], Agg, S) :- occ_count(M, H, X),  counter_helper(M, T, [X | Agg], S).
counter(M, El, S) :- counter_helper(M, El, [], S). 
ctgt([], _, 0) :- !.
ctgt([F| R], K, N) :- ( F >= K -> ctgt(R, K, N1), N is N1 + 1 ; ctgt(R, K, N)).
crdnltyHigh(M, K, N):- sort(M, El), counter(M, El, S), ctgt(S, K, N).

%% 3. crdnltyMax(M,N1,N2) means there are N1 distinct elements in the multiset M occurring the maximum N2 times.

%% ?- crdnltyMax([4,2,4,4,3,3], N1,N2) gives N1 = 1, N2 = 3. since 4 occurs the maximum number of times, i.e. 3 times and only 1 number, i.e. 4 occurs 3 times.

max([X],X) :- !.
max([F | R], N) :- max(R, I), (I < F -> N is F ; N is I). 
crdnltyMax(M, N1, N2) :- sort(M, El), counter(M, El, S), max(S, N2), occ_count(S, N2, N1).
