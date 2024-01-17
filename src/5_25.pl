% script ex 5.25
% 1
killer(butch).

%2
married(marsellus,mia).
married(mia,marsellus).
married(X):- married(X, Y).
%3
dead(zed).

%4
massage(vincent, mia).

kill(marsellus,X) :- massage(X,mia).
dead(X) :- massage(X, Y).
killer(X) :- kill(X, Y).

%5
loves(mia,X) :- dancer(X).

%6
eats(jules,X) :- jum(X);nutritiuous(X).
