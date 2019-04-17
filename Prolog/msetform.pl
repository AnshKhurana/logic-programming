%% A program to convert into multi-set form

msetform([], []).
msetform([A|R], [ (A, N) | R2 ]) :- cr(A, [A | R], L1, N), msetform(L1, R2).

cr(_, [], [], 0).
cr(A, [A | R],  Ans, N) :-  cr(A, R, Ans, N1), N is N1+1.
cr(A, [B | R],  Ans, N) :- A \== B,  cr(A, R, Ans1, N), append([B], Ans1, Ans).  
