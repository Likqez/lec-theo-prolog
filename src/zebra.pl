% defined
suffix(Suf,List):- append(_,Suf,List).
sublist(Sub,List):- prefix(Pre,List), suffix(Sub,Pre).

haus(H) :- H=[_,_,_].

strasse(S) :- S=[H1,H2,H3],
haus(H1),haus(H2),haus(H3),

% es gibt rot, grün, blau
member([rot,_,_],S),
member([gruen,_,_],S),
member([blau,_,_],S),

% engländer in rot
member([rot,englaender,_],S),
member([_,spanier,_],S),
member([_,japaner,_],S),

% spanier hat jaguar
member([_,_,schnecke], S),
member([_,spanier,jaguar], S),
member([_,_,zebra], S),

%japaner rechts von schnecke
sublist([[_,_,schnecke]|T1],S),
member([_,japaner,_],T1),
%schnecke rechts von gruen
sublist([[gruen,_,_]|T2],S),
member([_,_,schnecke],T2),

!.



