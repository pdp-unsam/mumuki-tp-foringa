Bien, hasta ahora ya implementamos todas las funcionalidades que nos pidieron para cualquier post.

Pero los usuarios suelen tener muchos posts. Por ej:

```Haskell
postsDeLucas = [
	("El Lunes a que aula vamos?", 0),
	("El Lunes a que aula vamos? -- Laboratiorio de Sociales! -- Ok, gracias!", 1)
	] :: [Post]

postsDeFer = [
	("PDP", 10),
	("El Lunes a que aula vamos? -- Laboratiorio de Sociales!", 0),
	("ATENCION avisos parroquiales...", 2), ("PHM", -2)
	]  :: [Post]
```
	
Se pide:

1. Saber los `puntosTotales/1` de un usuario. Esto significa, dada la lista de sus posts, la sumatoria de los puntos base de cada post.

2. Obtener los `mensajesPopulares/1` de los posts de un usuario. O sea, los _mensajes_ de aquellos posts que son populares. Nos dijeron que un post es popular cuando **no** es molesto y, además, tiene una cantidad de caracteres impar en su mensaje.


> Recordá que ya definimos las funciones `puntosBase`, `esMolesto` y `responder`!