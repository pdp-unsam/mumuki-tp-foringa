- Haskell ya viene con la función `words :: String -> [String]` que dado un texto lo divide en palabras (por espacios). Por ej:

```Haskell
> words "Separar en palabras"
["Separar","en","palabras"]
```

- Existe el operador `(++) :: [a] -> [a] -> [a]` que sirve para concatenar listas. Por ej:

```Haskell
> [1,2,3] ++ [4,5,6]
[1,2,3,4,5,6]
```

- También contamos con la función `elem :: a -> [a] -> Bool` que nos indica si un elemento se encuentra en alguna lista. Por ej:

```Haskell
> elem 'a' "Hola"
True
```
