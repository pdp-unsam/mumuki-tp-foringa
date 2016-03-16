describe "iniciales:" $ do
	it "Las iniciales del usuario estrella 'Fernando' son 'Fer'" $ do
		iniciales (Full "Fernando" Estrella []) `shouldBe` "Fer"

	it "Las iniciales del usuario nuevo 'Nahuel' son 'Nah'" $ do
		iniciales (Nuevo "Nahuel" []) `shouldBe` "Nah"


describe "mensajito:" $ do
	it "El mensajito de Fer es 'PDP'" $ do
		mensajito (Full "Fernando" Estrella [("PDP", 0)]) `shouldBe` "PDP"

	it "El mensajito de Nahue es 'Hol'" $ do
		mensajito (Nuevo "Nahuel" [("Hola", 0)]) `shouldBe` "Hol"


describe "upgradear:" $ do
	it "Upgradear un nuevo usuario con algún post molesto lo convierte en novato" $ do
		upgradear (Nuevo "" [("mensaje", -1)]) `shouldBe` Full "" Novato [("mensaje", -1)]

	it "Upgradear un nuevo usuario sin posts molestos ni puntaje total mayor que 100 lo convierte en groso" $ do
		upgradear (Nuevo "" []) `shouldBe` Full "" Groso []

	it "Upgradear un nuevo usuario con puntaje total mayor que 100 lo convierte en estrella" $ do
		upgradear (Nuevo "" [("mensaje", 101)]) `shouldBe` Full "" Estrella [("mensaje", 101)]

	it "Upgradear un usuario Novato convierte en Groso" $ do
		upgradear (Full "" Novato []) `shouldBe` Full "" Groso []

	it "Upgradear un usuario Groso convierte en Estrella" $ do
		upgradear (Full "" Groso []) `shouldBe` Full "" Estrella []