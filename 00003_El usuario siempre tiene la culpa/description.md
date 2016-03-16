Excelente! Ya casi terminamos.

Ningún foro funciona si no tiene usuarios. Por suerte, este foro sí los tiene. Es más, tiene dos clases de usuarios, los _Nuevos_ y los _Full_. Estos últimos, además, pueden ser _Novatos_, _Grosos_ o _Estrellas_.

Nos dijeron que están modelados con un tipo de dato propio:

```Haskell
data Categoria = Novato | Groso | Estrella deriving (Show, Eq, Enum)

data Usuario =	Nuevo String [Post] | Full String Categoria [Post] deriving (Show, Eq)
```

Algunos ejemplos de usuarios podrían ser:

```Haskell
nahue = Nuevo "Nahuel" [("Hola", 0)]
fer = Full "Fernando" Estrella postsDeFer
```

También ya tenemos definidas las siguientes funciones:

```Haskell
nick (Nuevo n _) = n
nick (Full n _ _) = n

posts (Nuevo _ p) = p
posts (Full _ _ p) = p

categoria (Full _ c _) = c
```

Se pide:

1. Saber las `iniciales/1` de un usuario, estas son las primeras 3 letras de su nick.

2. Obtener un `mensajito/1` para un usuario (para mostrar en una _preview_). El mensajito de un usuario son las primeras 3 letras del mensaje del primer post.

3. Poder `upgradear/1` a un usuario, con las siguientes indicaciones:
  - Si el usuario es nuevo y suma más de 100 puntos totales en sus posts => pasa a ser full estrella,
  - Si el usuario es nuevo y tiene algún post molesto => pasa a ser full novato,
  - Si el usuario es nuevo y no suma más de 100 puntos totales ni tiene ningún post molesto => pasa a ser full groso,
  - Si el usuario es full novato => pasa a ser full groso,
  - Si el usuario es full groso => pasa a ser full estrella
  - > Los usuarios full estrellas no pueden upgradearse más, así que están fuera de este dominio.



> Recordá que ya definimos las funciones `puntosBase`, `esMolesto`, `responder`, `puntosTotales` y `mensajesPopulares`!