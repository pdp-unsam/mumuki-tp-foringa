type Post = (String, Int)

data Categoria = Newbie | Groso | Estrella deriving (Show, Enum)

data Usuario =
	Nuevo {
		nick :: String,
		posts :: [Post]
	} |
	Full {
		nick :: String,
		categoria :: Categoria,
		posts :: [Post]
	} deriving (Show)
