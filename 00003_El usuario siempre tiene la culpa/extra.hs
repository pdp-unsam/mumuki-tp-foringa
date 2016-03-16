type Post = (String, Int)

data Categoria = Novato | Groso | Estrella deriving (Show, Eq, Enum)

data Usuario =
	Nuevo {
		nick :: String,
		posts :: [Post]
	} |
	Full {
		nick :: String,
		categoria :: Categoria,
		posts :: [Post]
	} deriving (Show, Eq)
	

-- a
puntosBase :: Post -> Int
puntosBase (mensaje, likes) = cantidadPalabras mensaje * likes

cantidadPalabras = length . words

-- b
esMolesto :: Post -> Bool
esMolesto post = tienePuntosNegativos post || esSpam post

tienePuntosNegativos post = puntosBase post < 0

esSpam = mensajeSpam . fst

mensajeSpam mensaje = elem "ATENCION" (words mensaje)

-- c
responder :: Post -> String -> Post
responder (pregunta, _) respuesta = (pregunta ++ " -- " ++ respuesta, 0)

-----------------

-- a
puntosTotales :: [Post] -> Int
puntosTotales = sum . losPuntosBase

losPuntosBase posts = map puntosBase posts

-- b
mensajesPopulares :: [Post] -> [String]
mensajesPopulares = mensajes . populares

mensajes posts = map fst posts

populares posts = filter esPopular posts

esPopular post = tieneCantCaracteresImpares post && not (esMolesto post)

tieneCantCaracteresImpares = not . even . length . fst