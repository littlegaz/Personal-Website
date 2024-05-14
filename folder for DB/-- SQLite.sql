-- SQLite
-- CREATE TABLE IF NOT EXISTS movies(
--     id INTEGER PRIMARY KEY, 
--     title TEXT, 
--     genre TEXT,
--     release_year INTEGER
-- );
-- -- DO NOTEDIT CODE ABOVE

-- INSERT INTO movies (id, title, genre, release_year)
-- VALUE ("1", "The Godfather", "Crime", "1972");

-- INSERT INTO movies (id, title, genre, release_year)
-- VALUES 
--     ("2", "Moonlight", "Drama", "2106"),
--     ("3", "Parasite", "Drama", "2019"),
--     ("4", "The Lord of the Rings: The Return of the King", "Action" "2003"),
--     ("5", "Everything Everywhere All At Once", "Action", "2022");

-- UPDATE movies
-- SET genre = "Action"
-- WHERE id = 1;

-- DELETE FROM movies WHERE id = 4;


-- CREATE TABLE IF NOT EXISTS people(
--     id INTEGER PRIMARY KEY, 
--     name TEXT, 
--     age INTEGER,
--     favColor STRING
-- );

-- INSERT INTO people  (name, age, favColor)
-- VALUES 
--     ("Veronica", 33, "Violet"),
--     ("Deandre", 23, "Orange"),
--     ("Jess", 25, "Violet"),
--     ("Jeff", 35, "Green"),
--     ("Hugo", 42, "Pink");

-- SELECT id, name FROM people WHERE age > 30;



-- DROP TABLE IF EXISTS employees;
-- DROP TABLE IF EXISTS departments; 
-- CREATE TABLE IF NOT EXISTS employees(
--     id INTEGER PRIMARY KEY, 
--     first_name TEXT, 
--     last_name TEXT,
--     department_id INTEGER,
--     salary INTEGER
-- );

-- CREATE TABLE IF NOT EXISTS departments(
--     id INTEGER PRIMARY KEY, 
--     name TEXT
-- );

-- INSERT INTO employees (first_name, last_name, department_id, salary)
-- VALUES
--     ('Ahmed', 'Khan', 1, 50000),
--     ('Sakura', 'Tanaka', 2, 65000),
--     ('Moussa', 'Diop', 3, 55000),
--     ('Jia', 'Li', null, 60000),
--     ('Emmanuel', 'Smith', 2, 70000),
--     ('Fatima', 'Camara', 3, 75000),
--     ('Kofi', 'Boateng', 4, 55000),
--     ('Leila', 'Guzman', null, 80000)
-- ;

-- INSERT INTO departments (name)
-- VALUES
--     ('Sales'),
--     ('Marketing'),
--     ('Engineering'),
--     ('Finanace')
-- ;
-- -- DO NOT EDIT CODE ABOVE
-- SELECT employees.first_name, departments.name
-- FROM employees
-- INNER JOIN departments
-- ON employees.department_id = departments.id;


-- CREATE TABLE IF NOT EXISTS companies(
--     id INTEGER PRIMARY KEY, 
--     name TEXT, 
--     location TEXT,
--     numEmployees INTEGER
-- );
-- -- DO NOT EDIT CODE ABOVE
-- INSERT INTO companies(name, location, numEmployees)
-- VALUES("Acme Inc", "Nowhere", 5);

-- -- DO NOT EDIT CODE BELOW
-- SELECT * FROM companies;



-- CREATE TABLE IF NOT EXISTS companies(
--     id INTEGER PRIMARY KEY, 
--     name TEXT, 
--     location TEXT,
--     numEmployees INTEGER
-- );

-- INSERT INTO companies (name, location, numEmployees)
-- VALUES
--     ('Acme Inc', 'Nowhere', 15),
--     ('The Better Company', 'Washington DC', 50)
-- ;
-- -- DO NOT EDIT CODE ABOVE
-- UPDATE companies SET location = "New York" WHERE name = "Acme Inc";

-- -- DO NOT EDIT CODE BELOW
-- SELECT * FROM companies;


-- CREATE TABLE IF NOT EXISTS companies(
--     id INTEGER PRIMARY KEY, 
--     name TEXT, 
--     location TEXT,
--     numEmployees INTEGER
-- );

-- INSERT INTO companies (name, location, numEmployees)
-- VALUES
--     ('Acme Inc', 'Nowhere', 15),
--     ('The Better Company', 'Washington DC', 50)
-- ;
-- -- DO NOT EDIT CODE ABOVE
-- DELETE FROM companies WHERE name = "Acme Inc"


-- -- DO NOT EDIT CODE BELOW
-- SELECT * FROM companies;

-- CREATE TABLE IF NOT EXISTS companies(
--     id INTEGER PRIMARY KEY, 
--     name TEXT, 
--     location TEXT,
--     numEmployees INTEGER
-- );

-- INSERT INTO companies (name, location, numEmployees)
-- VALUES
--     ('Acme Inc', 'New York', 15),
--     ('The Better Company', 'Washington DC', 50),
--     ('Bowls-R-Us', 'Copper Hills', 60),
--     ('Speed Cyclery', 'Washington DC', 147),
--     ('Sparkles-A-Million', 'New York', 25)
-- ;
-- -- DO NOT EDIT CODE ABOVE
-- SELECT * FROM companies

-- SELECT name, numEmployees
-- FROM companies
-- WHERE numEmployees > 40;

-- CREATE TABLE IF NOT EXISTS companies(
--     id INTEGER PRIMARY KEY, 
--     name TEXT, 
--     location TEXT
-- );

-- CREATE TABLE IF NOT EXISTS employees(
--     id INTEGER PRIMARY KEY, 
--     name TEXT, 
--     email TEXT,
--     company_id INTEGER REFERENCES companies(id)
-- );

-- INSERT INTO companies (name, location)
-- VALUES
--     ('Acme Inc', 'New York'),
--     ('The Better Company', 'Washington DC'),
--     ('Bowls-R-Us', 'Copper Hills'),
--     ('Speed Cyclery', 'Washington DC'),
--     ('Sparkles-A-Million', 'New York')
-- ;

-- INSERT INTO employees (name, email, company_id)
-- VALUES
--     ('Annie Position', 'annie@email.com', 2),
--     ('Bea O-Problem', 'bea@email.com', 1),
--     ('Bud Lightyear', 'dabuzz@email.com', 4),
--     ('Airis Windy', 'weather@email.com', 2),
--     ('Barbie Breath', 'barb@email.com', 2),
--     ('Reese WitherFork', 'reesey@email.com', 1)
-- ;
-- -- DO NOT EDIT CODE ABOVE
-- SELECT companies.name, employees.name, employees.email
-- FROM companies
-- INNER JOIN employees
-- ON companies.id = employees.company_id

-- CREATE TABLE IF NOT EXISTS companies(
--     id INTEGER PRIMARY KEY, 
--     name TEXT, 
--     location TEXT
-- );

-- CREATE TABLE IF NOT EXISTS employees(
--     id INTEGER PRIMARY KEY, 
--     name TEXT, 
--     email TEXT,
--     company_id INTEGER REFERENCES companies(id)
-- );

-- INSERT INTO companies (name, location)
-- VALUES
--     ('Acme Inc', 'New York'),
--     ('The Better Company', 'Washington DC'),
--     ('Bowls-R-Us', 'Copper Hills'),
--     ('Speed Cyclery', 'Washington DC'),
--     ('Sparkles-A-Million', 'New York')
-- ;

-- INSERT INTO employees (name, email, company_id)
-- VALUES
--     ('Annie Position', 'annie@email.com', 2),
--     ('Bea O-Problem', 'bea@email.com', 1),
--     ('Bud Lightyear', 'dabuzz@email.com', 4),
--     ('Airis Windy', 'weather@email.com', 2),
--     ('Barbie Breath', 'barb@email.com', 2),
--     ('Reese WitherFork', 'reesey@email.com', 1)
-- ;
-- -- DO NOT EDIT CODE ABOVE
-- SELECT companies.name, employees.name, employees.email
-- FROM companies
-- LEFT JOIN employees
-- ON companies.id = employees.company_id


-- CREATE TABLE IF NOT EXISTS companies(
--     id INTEGER PRIMARY KEY, 
--     name TEXT, 
--     location TEXT,
--     numEmployees INTEGER
-- );

-- INSERT INTO companies (name, location, numEmployees)
-- VALUES
--     ('Acme Inc', 'New York', 15),
--     ('The Better Company', 'Washington DC', 50),
--     ('Bowls-R-Us', 'Copper Hills', 60),
--     ('Speed Cyclery', 'Washington DC', 147),
--     ('Sparkles-A-Million', 'New York', 25)

-- SELECT * FROM companies WHERE id = 3;    

-- CREATE TABLE IF NOT EXISTS companies(
--     id INTEGER PRIMARY KEY, 
--     name TEXT, 
--     location TEXT,
--     numEmployees INTEGER
-- );

-- INSERT INTO companies (name, location, numEmployees)
-- VALUES
--     ('Acme Inc', 'New York', 15),
--     ('The Better Company', 'Washington DC', 50),
--     ('Bowls-R-Us', 'Copper Hills', 60),
--     ('Speed Cyclery', 'Washington DC', 147),
--     ('Sparkles-A-Million', 'New York', 25)
-- ;

-- SELECT * FROM companies WHERE location = "New York";

-- CREATE TABLE IF NOT EXISTS employees(
--     id INTEGER PRIMARY KEY, 
--     name TEXT, 
--     email TEXT
-- );

-- INSERT INTO employees (name, email)
-- VALUES
--     ('Annie Position', 'annie@email.com'),
--     ('Bea O-Problem', 'bea@email.com'),
--     ('Bud Lightyear', 'dabuzz@email.com'),
--     ('Airis Windy', 'weather@email.com'),
--     ('Barbie Breath', 'barb@email.com'),
--     ('Reese WitherFork', 'reesey@email.com')
-- ;
-- SELECT * FROM employees ORDER BY name ASC;


.mode column
.headers on

-- RESTAURANTS
CREATE TABLE restaurants (
    id INTEGER PRIMARY KEY,
    name TEXT,
    imagelink TEXT
);
insert into restaurants(name, imagelink) 
values 
  ("hells kitchen", "https://www.imdb.com/title/tt0437005/"),
  ("wagamamas", "https://www.imdb.com/title/aaa"),
  ("ruby ricks", "https://www.imdb.com/title/aaa")
;

-- MENUS
CREATE TABLE menus (
    id INTEGER PRIMARY KEY, 
    title TEXT,
    restaurant_id INTEGER REFERENCES restaurants(id)
);
insert into menus(title, restaurant_id)
values
  ("Wines", 1),
  ("A la carte", 1),
  ("Evening", 2),
  ("Breakfast", 2)
;

-- MENU ITEMS
CREATE TABLE menuItems (
    id INTEGER PRIMARY KEY,
    name TEXT,
    price INTEGER,
    menu_id INTEGER REFERENCES menus(id)
);
insert into menuItems(name,price,menu_id)
values
  ("Salmon", 25.99, 3),
  ("Sushi", 10.99, 2),
  ("Spring roll", 6.99, 2),
  ("Cabernet Sauvignon", 49.99, 1),
  ("Merlot", 39.99, 1)
; 
-- DO NOT EDIT CODE ABOVE
SELECT restaurants.name, menus.title
FROM menus
LEFT JOIN restaurants
ON restaurants.ID = menus.restaurant_id

SELECT restaurants.name, menus.title, menuItems.name
FROM restaurants
JOIN menus
ON restaurants.ID = menus.restaurant_id 
JOIN menuItems
ON menus.id = menuItems.menu_id



