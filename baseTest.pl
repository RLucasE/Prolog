dulce(caramelo).
dulce(durazno).
dulce(chocolate).
amargo(radicheta).
amargo(cebada).
leGusta(roque,chocolate).
leGusta(roque,radicheta).
leGusta(pepe,cebada).
colorDePelo(roque,colorado).
colorDePelo(pepe,rubio).
vive(roque,buenosAires).
vive(pepe,mendoza).
vive(lucas,salliquelo).
ciudadGrande(buenosAires).
ciudadGrande(mendoza).

esTierna(Persona) :- forall(leGusta(Persona,Alimento), dulce(Alimento)).
esCurioso(Alimento):- leGusta(Persona,Alimento),forall(leGusta(Persona,Alimento),colorDePelo(Persona,colorado)).

esColoradaYDeBuenosAires(Persona):- colorDePelo(Persona,colorado),vive(Persona,buenosAires).
esPeculiar(Alimento):-leGusta(Persona,Alimento),forall(leGusta(Persona,Alimento),esColoradaYDeBuenosAires(Persona)).


deleteAll([],_, []).
deleteAll([Cabeza | Cola], Elemento, Resultado) :-
    Cabeza = Elemento, 
    deleteAll(Cola, Elemento,Resultado).
deleteAll([Cabeza | Cola], Elemento, [Cabeza | Resultado]) :- 
    dif(Cabeza, Elemento), 
    deleteAll(Cola,Elemento, Resultado).
