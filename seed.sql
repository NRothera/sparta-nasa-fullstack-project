DROP TABLE IF EXISTS delicious_food;

CREATE TABLE delicious_food (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  body TEXT,
  image TEXT
);

INSERT INTO delicious_food (title , body, image) VALUES ('Post 1' , 'Body text 1', 'https://d2x3bkdslnxkuj.cloudfront.net/2112932_300.jpg');
INSERT INTO delicious_food (title , body, image) VALUES ('Post 2' , 'Body text 2','image2');
INSERT INTO delicious_food (title , body,image) VALUES ('Post 3' , 'Body text 3','image3');
INSERT INTO delicious_food (title , body,image) VALUES ('Post 4' , 'Body text 4','image4');
