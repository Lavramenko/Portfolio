CREATE TABLE transportation
(
    Id SERIAL not NULL PRIMARY KEY,
    departure CHARACTER VARYING(30),
    destination CHARACTER VARYING(30),
    weight INT,
    volume INT
);


  insert INTO transportation (departure, destination, weight, volume)
  VALUES 
  ('Moscow', 'Saint-Petersburg', 5, 10),
  ('Lipetsk', 'Moscow', 2, 7),
  ('Yaroslavl', 'Saint-Petersburg', 3, 8),
  ('Saint-Petersburg', 'Moscow', 4, 12),
  ('Lipetsk', 'Kursk', 5, 15),
  ('Moscow', 'Yaroslavl', 2, 10);
  
  SELECT * FROM transportation
  
  SELECT * FROM transportation
  WHERE destination = 'Moscow' AND weight > 2;
