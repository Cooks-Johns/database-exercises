USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (

  id INT unsigned NOT NULL AUTO_INCREMENT,
  artist VARCHAR (50),
  name VARCHAR (50),
  release_date INT(8),
  sales DECIMAL (3, 2),
  genre VARCHAR (50),
  PRIMARY KEY (id)
)

