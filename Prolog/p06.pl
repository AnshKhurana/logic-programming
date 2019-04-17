%% A program to check whether a list is a palindrome

pal(X) :- reverse(X, Z), Z == X.
