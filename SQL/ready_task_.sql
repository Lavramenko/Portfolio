create TABLE users (
  id serial not null,
  user_name VARCHAR(50) not null,
  level_id int, 
  skill int,
  primary key (ID)
  );
  
  create TABLE levels (
  id serial primary key,
  level_name VARCHAR(50) not null
  );
  

  
  SELECT * FROM levels 

create TABLE users (
  id serial not null,
  user_name VARCHAR(50) not null,
  level_id int, 
  skill int,
  primary key (ID)
  );
  
  create TABLE levels (
  id serial primary key,
  level_name VARCHAR(50) not null
  );
  
  insert INTO levels (level_name)
  VALUES ('admin'), ('power_user'), ('user'), ('guest');
  

  insert INTO users (user_name, level_id, skill)
  VALUES 
  ('Anton', 1, 900000),
  ('Denis', 3, 4000),
  ('Petr', 2, 50000),
  ('Andrey', 4, 20),
  ('Olga', 1, 600000),
  ('Anna', 1, 1600000);


 SELECT * from levels
  where level_name = 'admin';
  
  SELECT user_name from users
  WHERE level_id = (SELECT id from levels
  where level_name = 'admin');
  
Задания на написание запросов к БД:
1. Отобрать из таблицы user всех пользователей, у которых level_id=1, skill > 799000 и в имени встречается буква а
2. Удалить всех пользователей, у которых skill меньше 100000
3. Вывести все данные из таблицы user в порядке убывания по полю skill
4. Добавить в таблицу user нового пользователя по имени Oleg, с уровнем 4 и skill =10
5. Обновить данные в таблице user - для пользователей с level_id меньше 2 проставить skill 2000000
6. Выбрать user_name всех пользователей уровня admin используя подзапрос
7. Выбрать user_name всех пользователей уровня admin используя join


1.     create TABLE users (
  id serial not null,
  user_name VARCHAR(50) not null,
  level_id int, 
  skill int,
  primary key (ID)
  );
  
  create TABLE levels (
  id serial primary key,
  level_name VARCHAR(50) not null
  );
  
  insert INTO levels (level_name)
  VALUES ('admin'), ('power_user'), ('user'), ('guest');

  insert INTO users (user_name, level_id, skill)
  VALUES 
  ('Anton', 1, 900000),
  ('Denis', 3, 4000),
  ('Petr', 2, 50000),
  ('Andrey', 4, 20),
  ('Olga', 1, 600000),
  ('Anna', 1, 1600000);

  SELECT * FROM users 
  WHERE level_id = 1 and skill > 799000 and user_name like '%a%';

2. DELETE FROM users
WHERE skill < 100000;

3. SELECT * FROM users
ORDER BY skill DESC;

4. insert INTO users (user_name, level_id, skill)
  VALUES ('Oleg', 4, 10);

5. UPDATE users
SET skill = 2000000
WHERE level_id < 2;

6.   SELECT user_name from users
  WHERE level_id = (SELECT id from levels
  where level_name = 'admin');


7. SELECT users.user_name
FROM users
    INNER JOIN levels
    ON users.level_id = levels.id
    WHERE levels.level_name = 'admin';


  