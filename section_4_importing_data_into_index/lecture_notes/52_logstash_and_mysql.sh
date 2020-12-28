sudo apt update

sudo apt install mysql-server

cd ~

wget http://files.grouplens.org/datasets/movielens/ml-100k.zip

sudo mysql -u root -p

CREATE DATABASE movielens;

CREATE TABLE movielens.movies (
    movieID INT PRIMARY KEY NOT NULL,
    title TEXT,
    releaseDate date
);

LOAD DATA LOCAL INFILE 'ml-100k/u.item' INTO TABLE movielens.movies FIELDS TERMINATED BY '|'
    (movieID, title, @var3)
    set releaseDate = STR_TO_DATE(@var3, '%d-%M-%Y');


USE movielens;

SELECT * FROM movies WHERE title LIKE 'Star%';