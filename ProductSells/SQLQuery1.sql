CREATE TABLE categories
(
	categorie_id INT IDENTITY NOT NULL PRIMARY KEY,
	categorie_name NVARCHAR(30) NOT NULL,
	categorie_description nvarchar(50) NOT null
)
CREATE TABLE products
(
	product_id INT IDENTITY NOT NULL PRIMARY KEY,
	catagorie_id INT NOT NULL REFERENCES categories(categorie_id),
	product_name NVARCHAR(30) NOT NULL,
	stock NVARCHAR(30) NOT NULL,
	price MONEY NOT NULL,
	picture NVARCHAR(200)
)
GO
