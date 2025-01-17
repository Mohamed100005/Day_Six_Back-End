CREATE DATABASE Movies_Database;
USE Movies_Database;
CREATE TABLE actor(
	actor_id INT PRIMARY KEY,
	act_fname VARCHAR(20),
	act_lname VARCHAR(20),
	act_gender VARCHAR(1),
);
CREATE TABLE director(
	dir_id INT PRIMARY KEY,
	dir_fname VARCHAR(20),
	dir_lname VARCHAR(20),
);
CREATE TABLE movie_direction(
	dir_id INT,
	mov_id INT,
);
CREATE TABLE movie_cast(
	act_id INT,
	mov_id INT,
	role VARCHAR(30),

);
CREATE TABLE movie(
	mov_id INT PRIMARY KEY,
	mov_title VARCHAR(50),
	mov_year INT,
	mov_time INT,
	mov_lang VARCHAR(50),
	mov_dt_rel DATE,
	mov_dt_country VARCHAR(5)
);
CREATE TABLE reviewer(
	rev_id INT PRIMARY KEY,
	rev_name VARCHAR(30),
);
CREATE TABLE genres(
	gen_id INT PRIMARY KEY,
	gen_title VARCHAR(20)
); 

CREATE TABLE movie_genres(
	mov_id INT,
	gen_id INT
);
CREATE TABLE rating(
	mov_id INT,
	rev_id INT,
	rev_stars INT,
	num_o_rating INT
);