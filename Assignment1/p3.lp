%% Name: Ansh Khurana
%% Roll Number: 170050035
%% Original work.

% p3.lp  to check if we can make m marks on a ruler of length n.

order(m). % number of marks to make is m.

pos(0..n). % length of ruler is n. n+1 markable positions 0..n

used(0).  % first mark is at 0.

{used(N)} :- pos(N). % mark some subset of positions.

:- not m = #count{N:used(N)}.  % use only models with exactly m marks.

%% add your code here ....

:- used(I), used(J), used(K), used(L),I !=J, (J-I)=(L-K), I!=K.


%% do not change anything below this line

#show used/1.
