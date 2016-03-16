describe "puntosBase:" $ do
  it "El post ('Hola, cómo va?', 2) tiene 6 puntos base" $ do
  	puntosBase ("Hola, cómo va?", 2) `shouldBe` 6
  
  it "El post ('En el aula 3', 0) tiene 0 puntos base" $ do
  	puntosBase ("En el aula 3", 0) `shouldBe` 0
  
  it "El post ('Mañana hay examen sorpresa', -1) tiene -4 puntos base" $ do
  	puntosBase ("Mañana hay examen sorpresa", -1) `shouldBe` -4
