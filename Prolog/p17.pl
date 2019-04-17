%% A program to split a list

split(L, N, F, R):- append(F, R, L), length(F, N),!.
