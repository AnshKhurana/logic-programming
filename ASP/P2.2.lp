% Programming with Clingo, P 2.2
% p(1,2; 2,4; 4,8; 8,16)

p(N, M) :- J = 1..4, N = 2**(J-1), M = 2*N.



% #show powersof2/1.
% #const n=10.
% powersof2(X) :- J = 1..n,  X = 2**J.