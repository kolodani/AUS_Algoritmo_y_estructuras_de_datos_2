{-
    Notacion Asintotica
-}

-- Hay varias clases de funciones que capturan distintas propiedades:

-- Definicion (O-grande)
-- Sean f,g : N -> R. Decimos que f tiene orden de crecimiento O(g) (y escribimos f pertenece a O(g)) si existen constantes c pertenecientes a R+, n0 perteneciente a N, tales que:

-- para todo n >= n0,    0 <= f(n) <= c*g(n)

-- Definicion (Omega-grande)
-- Sean f,g : N -> R. Decimos que f tiene orden de crecimiento Omega(g) (y escribimos f perteneciente a Omega(g)) si existen constantes c pertenecientes a R+, n0 perteneciente a N, tales que:

-- para todo n >= n0,    0 <= c*g(n) <= f(n)

-- Definicion (Theta)
-- Sean f,g : N -> R. Decimos que f tiene orden de crecimiento Theta(g) (y escribimos f perteneciente a Theta(g)) si existen constantes c1c2 pertenecientes a R+, n0 perteneciente a N, tales que:

-- para todo n >= n0,    0 <= c1*g(n) <= f(n) <= c2*g(n)
