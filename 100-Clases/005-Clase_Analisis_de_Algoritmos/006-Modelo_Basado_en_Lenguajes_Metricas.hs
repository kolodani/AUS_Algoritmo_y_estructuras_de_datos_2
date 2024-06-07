{-
    Modelo Basado en Lenguajes Métricas
-}

-- WORK

-- W(C)                          = Kc
-- W(e1 op e2)                   = Kop + W(e1) + W(e2)
-- W(e1,e2)                      = K + W(e1) + W(e2)
-- W (e1 || e2)                  = K + W(e1) + W(e2)
-- W (if e1 then e2 else e3)     = K + W(e1) + W(e2) Eval (e1) = True
-- W (if e1 then e2 else e3)     = K + W(e1) + W(e3) Eval (e1) = False
-- W (let x = e1 in e2)          = K + W(e1) + W(e2[Eval (e1)/x])
-- W ({f(x):x pertenece a A})    = K + sumatoria (x pertenece a A) W(f(x))

-- SPAN

-- S(C)                       = Kc
-- S(e1 op e2)                = Kop + S(e1) + S(e2)
-- S(e1,e2)                   = K + S(e1) + S(e2)
-- S (e1 || e2)               = K + max S(e1) S(e2)
-- S (if e1 then e2 else e3)  = K + S(e1) + S(e2) Eval (e1) = True
-- S (if e1 then e2 else e3)  = K + S(e1) + S(e3) Eval (e1) = False
-- S (let x = e1 in e2)       = K + S(e1) + S(e2[Eval (e1)/x])
-- S ({f(x):x pertenece a A}) = K + max (x pertenece a A) S(f(x))

