% A program to choose k numbers which sum up to n
#show chosen/1.

#const k=3.
#const n=100.

k{chosen(1..n)}k.

:- n != #sum{X: chosen(X)}.
