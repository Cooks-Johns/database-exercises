USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (

  id INT unsigned NOT NULL AUTO_INCREMENT,
  artist VARCHAR (50),
  name VARCHAR (55),
  release_date INT(8),
  sales INT(8),
  genre VARCHAR (50),
  PRIMARY KEY (id)
)
