%% Prolog code for Magic square

%% In Prolog we can represent a n x n matrix as a list of n lists each with n integers. For example the first matrix can be expressed as

%%      Matrix = [[6,7,2],[1,5,9],[8,3,4]]



%% We will call a n x n   integer matrix M a quasi magic square with magic sum  S if each of its rows and each of its columns sum to S, but the principal diagonals need not sum to S.  An example of a quasi magic square which is not a magic square is  (in prolog notation)

%%             [[1, 6, 8], [5, 7, 3], [9, 2, 4]]

%% where each row and column sums to 15, but the diagonals do not.

%% There are two main parts in this quiz.  In the first part you will  only CHECK if a given matrix has some properties of a magic square. 

%% You can assume these predicates will always be called  with first argument instantiated to a n x n  integer matrix. No need to check if input is correct. Input will always have n lists each with n integers for n >= 1.



%% 1. Implement a predicate allRowsSameSum(Matrix, Sum) which succeds only if all rows have the same sum. In this case it gives this Sum as output. Sample calls below.
%% ?- allRowsSameSum([[6,7,2],[1,9,5],[8,3,4]],Sum).
%% Sum = 15.

sum([], 0).
sum([H|T], S):- sum(T, S1), S is H + S1.

alleq([], _).
alleq([X|Y], X) :- alleq(Y, X).

rowsum([],[]).
rowsum([R1|N], Rowsums):- sum(R1, S1), rowsum(N, Rowsums1), Rowsums = [S1| Rowsums1].
allRowsSameSum(Matrix, Sum) :- rowsum(Matrix, Rowsums), Rowsums = [Sum|_], alleq(Rowsums, Sum).

%% 2. Implement a predicate allColsSameSum(Matrix, Sum) which succeds only if all columns have the same sum. In this case it gives this Sum as output. Sample calls below.

%% ?- allColsSameSum([[6,7,2],[1,5,9],[8,3,4]],Sum).
%% Sum = 15 .

parallelsum([], R, R).
parallelsum([], [], []).
parallelsum([X| L1], [Y| L2], L):- parallelsum(L1,L2, Lsmaller), S is X+Y, L = [S|Lsmaller].

colsum([], []).
colsum([R1|N], Colsums):- colsum(N, Colsums1), parallelsum(Colsums1, R1, Colsums),!.
allColsSameSum(Matrix, Sum) :- colsum(Matrix, Colsums), Colsums = [Sum|_], alleq(Colsums, Sum).

%% 3.  Implement a predicate getDiagonals(Matrix, L, R)  which extracts the two principal diagonals from the matrix.

%% ?- getDiagonals([[6,7,2],[1,9,5],[8,3,4]], Left, Right).
%% Left = [6, 9, 4],
%% Right = [2, 9, 8].

%% ?- getDiagonals([[6,0,2,-4],[1,9,5,6],[8,7,3,4],[-6,3,0,-22]], Left, Right).
%% Left = [6, 9, 3, -22],
%% Right = [-4, 5, 7, -6].

% getDiagonals(Matrix, Left, Right)
