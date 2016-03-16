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