-- Requete 1: Afficher la liste des noms des focaccias par ordre alphabétique croissant
-- Résultat attendu : afficher les noms des foccacias dans l'ordre alphabetique
-- Résultat obtenu : liste des foccacia dans l'ordre alphabetique
-- Ecarts : NA
-- Code SQL: 
SELECT nom FROM foccacia ORDER BY nom ASC;
-- -------------------------------------------------------------

-- Requete 2: Afficher le nombre total d'ingrédients
-- Résultat attendu : compter le nombre d'ingrédients
-- Résultat obtenu : 25 ingrédients
-- Ecarts : NA
-- Code SQL: 
SELECT COUNT(*) as nombre_ingredients FROM ingredient; 
-- -------------------------------------------------------------

-- Requete 3: Afficher le prix moyen des focaccias
-- Résultat attendu : avec la fonction aggregation AVG , calculer le prix moyen des foccacia, arrondi à 2 decimales
-- Résultat obtenu : 10.38
-- Ecarts : NA
-- Code SQL: 
SELECT ROUND(AVG(prix),2) as prix_moyen from foccacia;
-- -------------------------------------------------------------

-- Requete 4: Afficher la liste des boissons avec leur marque, triée par nom de boisson
-- Résultat attendu : joindre 2 tableaux pour afficher seulement les noms de boissons et noms de marque, ordonné par ordre alphabetique de boisson
-- Résultat obtenu : boissons dans l'ordre alphabetique avec nom de la marque en face de chaque boisson
-- Ecarts : NA
-- Code SQL: 
SELECT boisson.nom as drink, marque.nom AS brand FROM boisson INNER JOIN marque ON boisson.id_marque = marque.id_marque ORDER BY boisson.nom ASC;
-- -------------------------------------------------------------

-- Requete 5: Afficher la liste des ingrédients pour une Raclaccia
-- Résultat attendu : récupérer la liste des ingrédients de la Raclaccia
-- Résultat obtenu : ail, base tomate, champignon, cresson, parmesan, poivre, raclette
-- Ecarts : NA
-- Code SQL: 
SELECT foccacia.nom as foccacia, GROUP_CONCAT(ingredient.nom SEPARATOR ", ") AS ingredients from foccacia INNER JOIN foccacia_ingredients ON foccacia.id_foccacia = foccacia_ingredients.id_foccacia INNER JOIN ingredient ON ingredient.id_ingredient = foccacia_ingredients.id_ingredient WHERE foccacia.nom = "Raclaccia" ;
SELECT foccacia.nom as foccacia, ingredient.nom AS ingredient from foccacia INNER JOIN foccacia_ingredients ON foccacia.id_foccacia = foccacia_ingredients.id_foccacia INNER JOIN ingredient ON ingredient.id_ingredient = foccacia_ingredients.id_ingredient WHERE foccacia.nom = "Raclaccia" ;
-- -------------------------------------------------------------

-- Requete 6: Afficher le nom et le nombre d'ingrédients pour chaque foccacia
-- Résultat attendu : sur chaque foccacia , trouver le nombre d'ingrédients et afficher les 2 colonnes
-- Résultat obtenu : liste des foccacia  avec leur nombre ingrédients 
-- Ecarts : NA
-- Code SQL: 
SELECT foccacia.nom AS foccacia, COUNT(ingredient.nom) as nombre_ingredients from foccacia INNER JOIN foccacia_ingredients ON foccacia.id_foccacia = foccacia_ingredients.id_foccacia INNER JOIN ingredient ON ingredient.id_ingredient = foccacia_ingredients.id_ingredient GROUP BY foccacia.nom;
-- -------------------------------------------------------------

-- Requete 7: Afficher le nom de la focaccia qui a le plus d'ingrédients
-- Résultat attendu : afficher la foccacia avec le plus d'ingrédients
-- Résultat obtenu : Paysanne avec 12 ingredients
-- Ecarts : NA
-- Code SQL: 
SELECT foccacia.nom AS foccacia, COUNT(ingredient.nom) as nombre_ingredients from foccacia INNER JOIN foccacia_ingredients ON foccacia.id_foccacia = foccacia_ingredients.id_foccacia INNER JOIN ingredient ON ingredient.id_ingredient = foccacia_ingredients.id_ingredient GROUP BY foccacia.nom ORDER BY nombre_ingredients DESC LIMIT 1;
-- -------------------------------------------------------------

-- Requete 8: Afficher la liste des focaccia qui contiennent de l'ail
-- Résultat attendu : lister seulement les foccacia avec ail
-- Résultat obtenu : mozaccia, gorgonzollaccia, raclaccia, paysanne
-- Ecarts : NA
-- Code SQL: 
SELECT foccacia.nom as foccacia FROM foccacia INNER JOIN foccacia_ingredients ON foccacia.id_foccacia = foccacia_ingredients.id_foccacia INNER JOIN ingredient ON ingredient.id_ingredient = foccacia_ingredients.id_ingredient WHERE ingredient.nom = "ail" ;
-- -------------------------------------------------------------

-- Requete 9: 
-- Résultat attendu : 
-- Résultat obtenu :
-- Ecarts : 
-- Code SQL: 
-- -------------------------------------------------------------

-- Requete 10: 
-- Résultat attendu : 
-- Résultat obtenu :
-- Ecarts : 
-- Code SQL: 
-- -------------------------------------------------------------


