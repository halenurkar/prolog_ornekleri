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


soy(X,Y) :- ebeveyn(X,Y).
soy(X,Y) :- ebeveyn(X,Z), soy(Z,Y).
