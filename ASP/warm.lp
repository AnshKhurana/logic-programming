% Programming with Clingo, P 1.2

#show warm/1.
warm(C) :- t(C,T1), T1>90.
t(austin,88). t(dallas,95). t(houston,90). t(san_antonio,85).