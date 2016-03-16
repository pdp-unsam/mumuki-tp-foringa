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