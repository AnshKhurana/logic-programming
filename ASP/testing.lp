% A program to test some features of ASP.

%% fac(0 ,1).
%% fac(N +1 , F *( N +1)) :- fac(N , F ) , N < n .
%% % achieved : fac /2 = {(0 ,0!) ,... ,( n , n !)}
%% ans(n, F) :- fac(n, F).
%% % achieved : fac /1 = {0! ,... , n !}
%% #show ans/2.

{p(a);q(b)}.

:- not p(a), not q(b).
