# RB-tifosiV2

## Instructions pour utiliser repo

1. Executer le fichier structure ```sudo mysql < DB/structure.sql```
2. Executer le fichier data_insertion ```sudo mysql < DB/data_insertion.sql```
3. Executer chaque code sql sur terminal :
    a. Requete 1: Afficher la liste des noms des focaccias par ordre alphabétique croissant
    ```
    SELECT nom FROM foccacia ORDER BY nom ASC;
    ```
    b. Requete 2: Afficher le nombre total d'ingrédients
    ```
    SELECT COUNT(*) as nombre_ingredients FROM ingredient;
    ```
    c. Requete 3: Afficher le prix moyen des focaccias
    ```
    SELECT ROUND(AVG(prix),2) as prix_moyen from foccacia;
    ```
    d. Requete 4: Afficher la liste des boissons avec leur marque, triée par nom de boisson
    ```
    SELECT boisson.nom as drink, marque.nom AS brand FROM boisson INNER JOIN marque ON boisson.id_marque = marque.id_marque ORDER BY boisson.nom ASC;
    ```
    e. 
    ```
    ```
        ```
    ```
        ```
    ```
        ```
    ```
        ```
    ```
        ```
    ```
        ```
    ```
        ```
    ```
        ```
    ```
        ```
    ```
        ```
    ```


## Réponses des requetes

1. Afficher la liste des noms des focaccias par ordre alphabétique croissant 
```  
+-----------------+
| nom             |
+-----------------+
| Américaine      |
| Emmentalaccia   |
| Gorgonzollaccia |
| Hawaienne       |
| Mozaccia        |
| Paysanne        |
| Raclaccia       |
| Tradizione      |
+-----------------+
```
2. Afficher le nombre total d'ingrédients
```
+--------------------+
| nombre_ingredients |
+--------------------+
|                 25 |
+--------------------+
```

3. Afficher le prix moyen des focaccias

```
+------------+
| prix_moyen |
+------------+
|      10.38 |
+------------+
```
4. Afficher la liste des boissons avec leur marque, triée par nom de boisson

```
+---------------------------+-------------+
| drink                     | brand       |
+---------------------------+-------------+
| capri-sun                 | coca-cola   |
| coca-cola original        | coca-cola   |
| coca-cola zéro            | coca-cola   |
| eau de source             | cristalline |
| fanta citron              | coca-cola   |
| fanta orange              | coca-cola   |
| lipton peach              | pepsico     |
| lipton zéro citron        | pepsico     |
| monster energy ultra blue | monster     |
| monster energy ultra gold | monster     |
| pepsi                     | pepsico     |
| pepsi max zéro            | pepsico     |
+---------------------------+-------------+
```
5. 
```

```
```

```
```

```
```

```
```

```

```

```
```

```
```

```
```

```
```

```
```

```

```

```
```

```
```

```
```

```
```

```
```

```

```

```
```

```
```

```
```

```
```

```
```

```

```

```
```

```
```

```
```

```
```

```
```

```

```

```
```

```
```

```
```

```
```

```
```

```

```

```
```

```
```

```
```

```
```

```
```

```

```

```
```

```
```

```
```

```
```

```
```

```

```

```
```

```
```

```
```

```
```

```
```

```

```

```
```

```
```

```
```

```
```

```
```

```

```

```
```

```
```

```
```

```
