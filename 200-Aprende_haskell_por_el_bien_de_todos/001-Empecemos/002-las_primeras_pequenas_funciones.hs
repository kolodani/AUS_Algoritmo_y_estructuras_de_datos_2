-- Funcion que duplica el valor de x
doubleMe x = x + x

-- Funcion que suma el doble de dos numeros
doubleUs x y = 2*x + 2*y

-- Redefinimos funciones
doubleUs2 x y = doubleMe x + doubleMe y

-- primer if
doubleSmallNumber x = if x > 100
                        then x
                        else x*2

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

-- funcion con el signo '
conanO'Brien = "Soy yo, Conan o'Brien!"

