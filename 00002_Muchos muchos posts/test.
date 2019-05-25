describe "puntosTotales:" $ do
	it "Los posts de Lucas tienen 13 puntos en total" $ do
		puntosTotales postsDeLucas `shouldBe` 13

	it "Los posts de Fer tienen 4 puntos en total" $ do
		puntosTotales postsDeFer `shouldBe` 14

describe "mensajesPopulares:" $ do
	it "Solamente el último mensaje de Lucas es popular" $ do
		mensajesPopulares postsDeLucas `shouldBe` [(fst . last) postsDeLucas]

	it "Los primeros dos mensaje de Fer son populares" $ do
		mensajesPopulares postsDeFer `shouldBe` (map fst . take 2) postsDeFer