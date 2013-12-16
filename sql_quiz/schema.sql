CREATE TABLE users(
id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
name text);

CREATE TABLE quizzes(
id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
name text);

CREATE TABLE questions(
id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
content text,
quiz_id integer);

CREATE TABLE choices(
id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
content text,
correct integer,
question_id integer);

CREATE TABLE answers(
id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
user_id integer,
question_id integer,
choice_id integer
);
