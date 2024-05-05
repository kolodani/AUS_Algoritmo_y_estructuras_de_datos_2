{-
    Aplicacion de funciones
-}

-- en haskell y en matematicas se usan notaciones parecidas
-- ya que haskell es un lenguaje funcional el mismo se basa en
-- la matematica

-- en Matematicas              en Haskell
-- funcion
-- f(x) = x + 1                f x = x + 1
-- funcion con dos variables
-- g(x,y) = x + y              g x y = x + y
-- funcion que recibe una funcion
-- f(g(x)) = f(y)              f (g x) = f y            si g(x) = y
-- funcion que recibe un parametro y una funcion
-- f(x,g(y)) = f(x,w)          f x (g y) = f x w        si g(y) = w
-- composicion de funciones
-- f(x)g(y) = f(w)             f x * g y = f w          si g(y) = w

-- la aplicacion tiene mayor precedencia que a cualquier otra cosa
-- por ejemplo
-- f x + y = f(x) + y       y no es f(x + y)

-- la aplicacion de funciones se denota con un espacio
-- f x = f(x)

-- la aplicacion asocia hacia la izquierda
-- f a b + c * d = ((f a) b) + (c * d)

