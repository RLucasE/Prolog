gustaDe(luis, nora).
gustaDe(roque, nora).
gustaDe(roque, ana).
gustaDe(marcos,zulema).
gustaDe(X,zulema) :- gustaDe(X, ana).
gustaDe(juan, X) :- gustaDe(roque, X).
