uzunluk([],0).
uzunluk([_|K],L) :- uzunluk(K,M), L=M+1.

writelist([]).
writelist([B|K]) :- write(B), writelist(K), nl.

hanoi(N) :- tasi(N, sol, orta, sag).
tasi(1,A,_,C) :- inform(A,C), !.
tasi(N,A,B,C) :- N1=N-1, tasi(N1,A,C,B), inform(A,C), nl, tasi(N1,B,A,C).
inform(Ch1,Ch2) :- write(Ch1 ,Ch2).


bir([],L,L).
bir([X|L1],L2,[X|L3]) :- bir(L1,L2,L3).	
