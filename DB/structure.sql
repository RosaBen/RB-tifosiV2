CREATE DATABASE tifosi;
use tifosi;

CREATE TABLE marque(
  id_marque INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(50) NOT NULL
);

CREATE TABLE boisson(
  id_boisson INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(50) NOT NULL,
  id_marque INT NOT NULL,
  Foreign Key (id_marque) REFERENCES marque(id_marque)
);

CREATE TABLE ingredient(
  id_ingredient INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(50) NOT NULL
);

CREATE TABLE foccacia(
  id_foccacia INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(50) NOT NULL,
  prix DECIMAL(5,2) NOT NULL
);

CREATE TABLE foccacia_ingredients(
  id_foccacia INT NOT NULL,
  id_ingredient INT NOT NULL,
  quantite INT NOT NULL,
  PRIMARY KEY (id_foccacia, id_ingredient),
  Foreign Key (id_foccacia) REFERENCES foccacia(id_foccacia),
  Foreign Key (id_ingredient) REFERENCES ingredient(id_ingredient)
);

CREATE TABLE Client(
  id_client INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(50) NOT NULL,
  email VARCHAR(150) NOT NULL,
  code_postal INT NOT NULL
);

CREATE TABLE menu(
  id_menu INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(50) NOT NULL,
  prix DECIMAL(5,2) NOT NULL,
  id_foccacia INT NOT NULL,
  Foreign Key (id_foccacia) REFERENCES foccacia(id_foccacia)
);

CREATE TABLE client_menu(
  id_client INT NOT NULL,
  id_menu INT NOT NULL,
  PRIMARY KEY (id_client, id_menu),
  Foreign Key (id_client) REFERENCES Client(id_client),
  Foreign Key (id_menu) REFERENCES menu(id_menu)
);

CREATE TABLE menu_boisson(
  id_menu INT NOT NULL,
  id_boisson INT NOT NULL,
  PRIMARY KEY(id_menu, id_boisson),
  Foreign Key (id_menu) REFERENCES menu(id_menu),
  Foreign Key (id_boisson) REFERENCES boisson(id_boisson)
);





