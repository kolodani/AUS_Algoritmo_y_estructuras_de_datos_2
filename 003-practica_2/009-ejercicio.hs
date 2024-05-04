{-
9. La función insert dada en teorı́a para insertar un elemento en un rbt puede optimizarse
elimando comparaciones innecesarias hechas por la función balance. Por ejemplo, en la definición
de la función ins cuando se aplica balance sobre el resultado de aplicar insert x sobre el subárbol
izquierdo (l ) y el subárbol derecho (r ), los casos de balance para testear que se viola el invariante
1 en el subárbol derecho no son necesarios dado que r es un rbt.
a) Definir dos funciones lbalance y rbalance que chequeen que el invariante 1 se cumple en los
subárboles izquierdo y derecho respectivamente.
b) Reemplazar las llamadas a balance en ins por llamadas a alguna de estas dos funciones.
-}

data Color = R | B deriving Show
data RBT a = E | T Color (RBT a) a (RBT a) deriving Show

balancel :: Color -> RBT a -> a -> RBT a -> RBT a
balancel B (T R (T R a x b) y c) z d = T R (T B a x b) y (T B c z d)
balancel B (T R a x (T R b y c)) z d = T R (T B a x b) y (T B c z d)
balancel c l a r = T c l a r

balancer :: Color -> RBT a -> a -> RBT a -> RBT a
balancer B a x (T R (T R b y c) z d) = T R (T B a x b) y (T B c z d)
balancer B a x (T R b y (T R c z d)) = T R (T B a x b) y (T B c z d)
balancer c l a r = T c l a r

insert :: Ord a => a -> RBT a -> RBT a
insert x t = makeBlack (ins x t)
    where   ins x E                       = T R E x E
            ins x (T c l y r )  | x < y    = balancel c (ins x l) y r
                                | x > y    = balancer c l y (ins x r )
                                | otherwise = T c l y r

makeBlack :: RBT a -> RBT a
makeBlack E = E
makeBlack (T _ l x r ) = T B l x r