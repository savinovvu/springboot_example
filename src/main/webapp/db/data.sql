CREATE TABLE IF NOT EXISTS person
(
  id        INTEGER NOT NULL AUTO_INCREMENT,
  login     VARCHAR(255),
  password  VARCHAR(255),
  birthdate DATE,
  PRIMARY KEY (id)
)
 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;

ALTER TABLE person AUTO_INCREMENT=1000;

DELETE FROM person;

INSERT INTO person (id, login, password, birthdate) VALUES
  (1, 'name1', 'password1', '2011-01-11'),
  (2, 'name2', 'password2', '2011-01-12'),
  (3, 'name3', 'password3', '2011-01-13'),
  (4, 'name4', 'password4', '2011-01-14'),
  (5, 'Имя5', 'password5', '2011-01-15'),
  (6, 'name6', 'password6', '2011-01-16');