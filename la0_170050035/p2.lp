%% Name: Ansh Khurana
%% Roll Number: 170050035
%% Original work.

%% P2

%% Given n and diff, count the number of pairs of prime numbers in the range 1 to n (n is included) with difference diff. Count only unique pairs so (x,y) and (y,x) would be the same pair.

%% Sample Output
%% $ clingo -c n=100 -c diff=10  p2.lp

%% Solving...

%% Answer: 1
%% ans(10) pair(3,13) pair(7,17) pair(13,23) pair(19,29) pair(31,41) pair(37,47) pair(43,53) pair(61,71) pair(73,83) pair(79,89)
%% SATISFIABLE


%% You don't have to show individual pairs, just show the final count, i.e in this case 10.

    % Prime numbers from 1 to n

% input: positive integer n.

composite(N) :- N=1..n, I=2..N-1, N\I=0.
% achieved: composite(N) iff N is a composite number
%           from {1,...,n}.

prime(N) :- N = 2..n, not composite(N).
pair(X, Y):- X=1..n, Y=1..n, prime(X), prime(Y), Y-X = diff.
ans(A):- #count{X: pair(X, Y)} = A.

#show ans/1.
