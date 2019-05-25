describe "puntosBase:" $ do
	it "El post ('Hola, cómo va?', 2) tiene 6 puntos base" $ do
		puntosBase ("Hola, cómo va?", 2) `shouldBe` 6

	it "El post ('En el aula 3', 0) tiene 0 puntos base" $ do
		puntosBase ("En el aula 3", 0) `shouldBe` 0

	it "El post ('Mañana hay examen sorpresa', -1) tiene -4 puntos base" $ do
		puntosBase ("Mañana hay examen sorpresa", -1) `shouldBe` -4

describe "esMolesto:" $ do
	it "El post ('Hola, cómo va?', 2) no es molesto" $ do
		("Hola, cómo va?", 2) `shouldSatisfy` (not . esMolesto)

	it "El post ('En el aula 3', 0) no es molesto" $ do
		("En el aula 3", 0)  `shouldSatisfy` (not . esMolesto)

	it "El post ('Mañana hay examen sorpresa', -1) es molesto" $ do
		("Mañana hay examen sorpresa", -1)  `shouldSatisfy` esMolesto

	it "El post ('ATENCION vendo mouse inalámbrico!', 1) es molesto" $ do
		("ATENCION vendo mouse inalámbrico!", 1) `shouldSatisfy` esMolesto

describe "responder:" $ do
	it "Responder el post ('Hola, cómo va?', 2) con el mensaje 'Todo bien y vos?' debería generar el post ('Hola, cómo va? -- Todo bien y vos?', 0)" $ do
		responder ("Hola, cómo va?", 2) "Todo bien y vos?" `shouldBe` ("Hola, cómo va? -- Todo bien y vos?", 0)