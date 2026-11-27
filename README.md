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
    e. Requete 5: Afficher la liste des ingrédients pour une Raclaccia
    ```
    SELECT foccacia.nom as foccacia, GROUP_CONCAT(ingredient.nom SEPARATOR ", ") AS ingredients from foccacia INNER JOIN foccacia_ingredients ON foccacia.id_foccacia = foccacia_ingredients.id_foccacia INNER JOIN ingredient ON ingredient.id_ingredient = foccacia_ingredients.id_ingredient WHERE foccacia.nom = "Raclaccia" ;
    ```
    OU
    ```
    SELECT foccacia.nom as foccacia, ingredient.nom AS ingredient from foccacia INNER JOIN foccacia_ingredients ON foccacia.id_foccacia = foccacia_ingredients.id_foccacia INNER JOIN ingredient ON ingredient.id_ingredient = foccacia_ingredients.id_ingredient WHERE foccacia.nom = "Raclaccia" ;
    ```
    f. Requete 6: Afficher le nom et le nombre d'ingrédients pour chaque foccacia
    ```
    SELECT foccacia.nom AS foccacia, COUNT(ingredient.nom) as nombre_ingredients from foccacia INNER JOIN foccacia_ingredients ON foccacia.id_foccacia = foccacia_ingredients.id_foccacia INNER JOIN ingredient ON ingredient.id_ingredient = foccacia_ingredients.id_ingredient GROUP BY foccacia.nom;
    ```
    g. Requete 7: Afficher le nom de la focaccia qui a le plus d'ingrédients
    ```
    SELECT foccacia.nom AS foccacia, COUNT(ingredient.nom) as nombre_ingredients from foccacia INNER JOIN foccacia_ingredients ON foccacia.id_foccacia = foccacia_ingredients.id_foccacia INNER JOIN ingredient ON ingredient.id_ingredient = foccacia_ingredients.id_ingredient GROUP BY foccacia.nom ORDER BY nombre_ingredients DESC LIMIT 1;
    ```
    h. Requete 8: Afficher la liste des focaccia qui contiennent de l'ail
    ```
    SELECT foccacia.nom as foccacia FROM foccacia INNER JOIN foccacia_ingredients ON foccacia.id_foccacia = foccacia_ingredients.id_foccacia INNER JOIN ingredient ON ingredient.id_ingredient = foccacia_ingredients.id_ingredient WHERE ingredient.nom = "ail" ;
    ```
    i. Requete 9:
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
5. Afficher la liste des ingrédients pour une Raclaccia
```
+-----------+-------------------------------------------------------------------+
| foccacia  | ingredients                                                       |
+-----------+-------------------------------------------------------------------+
| Raclaccia | ail, base tomate, champignon, cresson, parmesan, poivre, raclette |
+-----------+-------------------------------------------------------------------+
```
2ème solution:
```
+-----------+-------------+
| foccacia  | ingredient  |
+-----------+-------------+
| Raclaccia | ail         |
| Raclaccia | base tomate |
| Raclaccia | champignon  |
| Raclaccia | cresson     |
| Raclaccia | parmesan    |
| Raclaccia | poivre      |
| Raclaccia | raclette    |
+-----------+-------------+
```
6. Afficher le nom et le nombre d'ingrédients pour chaque foccacia
```
+-----------------+--------------------+
| foccacia        | nombre_ingredients |
+-----------------+--------------------+
| Mozaccia        |                 10 |
| Gorgonzollaccia |                  8 |
| Raclaccia       |                  7 |
| Emmentalaccia   |                  7 |
| Tradizione      |                  9 |
| Hawaienne       |                  9 |
| Américaine      |                  8 |
| Paysanne        |                 12 |
+-----------------+--------------------+
```
7. Afficher le nom de la focaccia qui a le plus d'ingrédients
```
+----------+--------------------+
| foccacia | nombre_ingredients |
+----------+--------------------+
| Paysanne |                 12 |
+----------+--------------------+
```
8. Afficher la liste des focaccia qui contiennent de l'ail
```
+-----------------+
| foccacia        |
+-----------------+
| Mozaccia        |
| Gorgonzollaccia |
| Raclaccia       |
| Paysanne        |
+-----------------+
```
9. 

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
