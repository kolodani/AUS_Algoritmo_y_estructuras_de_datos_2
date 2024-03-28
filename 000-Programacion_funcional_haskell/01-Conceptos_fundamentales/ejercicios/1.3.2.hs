{-
    1.3.2
    Supongase que definimos la funcion h mediante la ecuacion h x = f (g x).
    mostrar que si tanto f como g son estrictas, entonces tambien h lo es.
-}

-- h x = f (g x)
-- lo que estamos diciendo aca que h es una funcion que recibe un parametro x y
-- que devuelve la composicion de f y g evaluadas en x.
-- si f y g son extrictas, entonces h tambien lo es.
-- ahora esto sucede porque cada vez que haga h x, primero evaluara g x y luego
-- f (g x). si g x es estricta, entonces evaluara f (g x) y si f (g x) es
-- estricta, entonces h x es estricta.