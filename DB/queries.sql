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

-- Requete 5: 
-- Résultat attendu : 
-- Résultat obtenu :
-- Ecarts : 
-- Code SQL: 
-- -------------------------------------------------------------

-- Requete 6: 
-- Résultat attendu : 
-- Résultat obtenu :
-- Ecarts : 
-- Code SQL: 
-- -------------------------------------------------------------

-- Requete 7: 
-- Résultat attendu : 
-- Résultat obtenu :
-- Ecarts : 
-- Code SQL: 
-- -------------------------------------------------------------

-- Requete 8: 
-- Résultat attendu : 
-- Résultat obtenu :
-- Ecarts : 
-- Code SQL: 
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


