%Hechos
ciudadano_de(estadosunidos, coronelwest).
vendio_armas(coronelwest, coreadelsur).
enemigo_de(estadosunidos, coreadelsur).

%Reglas
es_criminal(X):- vendio_armas(X,Y), ciudadano_de(Z,X), enemigo_de(Z,Y).
