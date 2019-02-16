kadin(fatma).
kadin(hatice).
kadin(leyla).
kadin(mujgan).
kadin(gulcan).

ebeveyn(fatma,ali).
ebeveyn(fatma,hatice).
ebeveyn(hasan,ali).
ebeveyn(hasan,hatice).
ebeveyn(ali,gulcan).
ebeveyn(ali,mujgan).
ebeveyn(mujgan,orhan).
ebeveyn(leyla,gulcan).
ebeveyn(leyla,mujgan).
ebeveyn(hatice,mine).
ebeveyn(hasan,ali).
ebeveyn(mehmet,mine).

evlat(X) :- ebeveyn(_,X).
anne(X,Y) :- ebeveyn(X,Y), kadin(X).
kizkardes(X,Y) :- ebeveyn(Z,X), ebeveyn(Z,Y), kadin(X), kadin(Y), not(Y==X).
es(X,Y) :- ebeveyn(X,Z), ebeveyn(Y,Z), not(Y==X).
kuzen(X,Y) :- ebeveyn(Z,X), ebeveyn(K,Z), ebeveyn(M,Y), ebeveyn(K,M), not(Y==X), not(Z==M).
