type Post = (String, Int)

postsDeLucas = [
	("El Lunes a que aula vamos?", 0),
	("El Lunes a que aula vamos? -- Laboratiorio de Sociales! -- Ok, gracias!", 1)
	] :: [Post]

postsDeFer = [
	("PDP", 10),
	("El Lunes a que aula vamos? -- Laboratiorio de Sociales!", 0),
	("ATENCION avisos parroquiales...", 2), ("PHM", -2)
	]  :: [Post]
	
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