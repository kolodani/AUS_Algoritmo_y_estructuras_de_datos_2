{-
    1.2.3
    Imaginemos un lenguaje de expresiones para representar enteros definidos por las regla sintacticas:
    1- cero es una expresion;
    2- si e es una expresion;
    Entonces tambien lo son suc(e) y pred(e). Un evaluador reduce expresiones de este lenguaje
    aplicando las reglas siguients repetidamente hasta que no se puedan aplicar mas:
    suc(pred(e)) = e
    pred(suc(e)) = e
    simplificar la exprecion suc(pred(suc(pred(pred(cero)))))
    ¿De cuantas maneras se puede aplicar las reglas de reduccion a esta expresion?
    ¿Conducen todas ellas al mismo resultado final? Demosrar que el proceso de recuccion ha de
    terminar para todas las expresiones dadas. (Sugerencia: definit una nocion apropiada de tamaño
    de una expresion y demostrar que cada paso de reduccion reduce efectivamente el tamaño).
-}

cero :: Integer
cero = 0

predecesor :: Integer -> Integer
predecesor x = x - 1

sucesor :: Integer -> Integer
sucesor x = x + 1