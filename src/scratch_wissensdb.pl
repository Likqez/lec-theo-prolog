party.
woman(mia).
woman(andrea).
man(vincent).
human(X) :- woman(X).
human(X) :- man(X).
human(X) :- human(father(X)),human(monther(X)).
