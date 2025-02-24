%Hechos
papa_de(abraham, homero).
papa_de(abraham, herbert).
papa_de(clancy, patty).
papa_de(clancy, selma).
papa_de(homero, bart).
papa_de(homero, lisa).
papa_de(homero, maggie).
mama_de(mona, homero).
mama_de(mona, herbert).
mama_de(jacqueline, marge).
mama_de(jacqueline, patty).
mama_de(jacqueline, selma).
mama_de(marge, bart).
mama_de(marge, lisa).
mama_de(marge, maggie).
mama_de(selma, ling).

%Reglas
abuelo_de(X,Y):- papa_de(X,Z), papa_de(Z,Y).
abuelo_de(X,Y):- papa_de(X,Z), mama_de(Z,Y).
abuela_de(X,Y):- mama_de(X,Z), papa_de(Z,Y).
abuela_de(X,Y):- mama_de(X,Z), mama_de(Z,Y).

hermano_de(X,Y):- papa_de(Z,X), papa_de(Z,Y), X\=Y.
hermano_de(X,Y):- mama_de(Z,X), mama_de(Z,Y), X\=Y.
hermana_de(X,Y):- papa_de(Z,X), papa_de(Z,Y), X\=Y.
hermana_de(X,Y):- mama_de(Z,X), mama_de(Z,Y), X\=Y.

tio_de(X,Y):- papa_de(Z,Y), hermano_de(X,Z).
tio_de(X,Y):- mama_de(Z,Y), hermano_de(X,Z).
tia_de(X,Y):- papa_de(Z,Y), hermana_de(X,Z).
tia_de(X,Y):- mama_de(Z,Y), hermana_de(X,Z).

primo_de(X,Y):- papa_de(Z,X), tio_de(Z,Y).
primo_de(X,Y):- mama_de(Z,X), tia_de(Z,Y).
prima_de(X,Y):- papa_de(Z,X), tio_de(Z,Y).
prima_de(X,Y):- mama_de(Z,X), tia_de(Z,Y).


