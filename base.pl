es(roque,contadora).
es(roque,honesta).
es(roque,joven).
es(amalia,honesta).
es(amalia,ingeniera).
es(cecilia,abogada).
es(cecilia,joven).
es(cristia,ambiciosa).
es(ruben,ambiciosa).
noEs(alamia,joven).
trabajoEn(cristian,ventas).
trabajoEn(amalia,ingenieria).
puedeTrabajar(X,contaduria):- es(X,contadora),es(X,honesta).
puedeTrabajar(X,ventas):- es(X,ambiciosa),trabajoEn(X,ventas).
puedeTrabajar(marta,ventas).
esProfesional(X):-es(X,ingeniera).
esProfesional(X):-es(X,abogada).
tieneExperiencia(X):-trabajoEn(X,_).
puede(X,proyectos):-es(X,abogada),es(X,joven).
puede(X,proyectos):-es(X,ingeniera),trabajoEn(X,ingenieria).
puede(X,logistica):-esProfesional(X),es(X,joven).
puede(X,logistica):-esProfesional(X),tieneExperiencia(X).
