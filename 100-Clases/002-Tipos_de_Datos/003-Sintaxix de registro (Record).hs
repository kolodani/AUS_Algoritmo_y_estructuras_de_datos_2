{-
    Sintaxis de registro (Record)
-}

-- Podemos crear un tipo que describa a una persona:

-- Con los campos: nombre, apellido, edad, altura, numero de telefono
-- y sabor de su helado favorito

data Persona = Persona String String Int Float String String deriving (Show)

-- ? cuando declaramos un tipo nuevo con data, debemos agragar al final
-- ? la palabra clave deriving Show para que el tipo pueda ser impreso en
-- ? pantalla

-- creemos una persona (una instancia):

-- desde el interprete
-- > let guy =
-- >     Persona "Buddy" "Finklestein" 43 184.2 "526-2928" "Chocolate"
-- > guy
-- > -- Persona "Buddy" "Finklestein" 43 184.2 "526-2928" "Chocolate"

-- para obtener la informacion guardada en un tipo Person dedemos definir
-- funciones para cada campo:

-- firstName (Persona firstname _ _ _ _ _) = firstname
-- lastName (Persona _ lastname _ _ _ _) = lastname
-- age (Persona _ _ age _ _ _) = age
-- height (Persona _ _ _ height _ _) = height
-- phoneNumber (Persona _ _ _ _ number _) = number
-- flavor (Persona _ _ _ _ _ flavor) = flavor

-- debe haber un metodo mejor

-- podemos declarar el mismo tipo de la siguiente manera:

data Person = Person
  { firstName :: String,
    lastName :: String,
    age :: Int,
    height :: Float,
    phoneNumber :: String,
    flavor :: String
  }
  deriving (Show)

-- se crean automaticamente las funciones para obtener los campos:
-- firstName, lastName, age, height, phoneNumber, flavor

-- Ahora podemos definir:
-- Person
--   { firstName = "Buddy",
--     lastName = "Finklestein",
--     age = 43,
--     height = 184.2,
--     phoneNumber = "526-2928",
--     flavor = "Chocolate"
--   }

-- Notar que no es necesario respetar el orden en que fueron declarado los
-- campos
