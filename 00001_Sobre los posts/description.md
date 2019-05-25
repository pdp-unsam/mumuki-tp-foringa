Cada post se identifica como una _dupla_ compuesta por el mensaje del usuario y el puntaje que recibió de la comunidad. Ya se encuentra definido de la siguiente manera:

```Haskell
type Post = (String, Int)
```

Se pide:

1. Saber los `puntosBase/1` de un post sabiendo que se calcula como la cantidad de palabras del mensaje * su puntaje.

2. Saber si un post `esMolesto/1`. Un post se considera molesto cuando tiene un puntaje negativo, o bien es _spam_. Se considera _spam_ a todo post cuyo mensaje contenga la palabra `"ATENCION"`.

3. `responder/2` un post. Esto significa que dado un post (pregunta) y una mensaje (respuesta) crea un nuevo post con puntaje 0 y un mensaje con el formato "`<PREGUNTA>` -- `<RESPUESTA>`". Por ej:

```Haskell
> responder ("Maniana hay clases?", 3) "Si"
("Maniana hay clases? -- Si",0)
```