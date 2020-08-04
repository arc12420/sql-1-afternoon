-- Table Person


CREATE TABLE person(
    id SERIAL PRIMARY KEY,
    name TEXT,
    age INTEGER,
    height INTEGER,
    city TEXT,
    favorite_color TEXT
);

INSERT INTO person 
(name, age, height, city, favorite_color)
VALUES('Austing Carly', 27, 180.33, 'Draper', 'Charcoal'
);
INSERT INTO person 
(name, age, height, city, favorite_color)
VALUES('Ryang Milne', 25, 184.33, 'Orem', 'Yellow'
);
INSERT INTO person 
(name, age, height, city, favorite_color)
VALUES('Keatong Braithwait', 32, 183.33, 'Brigham City', 'Blue'
);
INSERT INTO person 
(name, age, height, city, favorite_color)
VALUES('Samg Chin', 24, 182.33, 'Draper', 'Red'
);
INSERT INTO person 
(name, age, height, city, favorite_color)
VALUES('Adam Kent', 28, 181.33, 'Flagstaff', 'Orange'
);

---------------------------------------------------------------------------
SELECT *
FROM person
ORDER BY height DESC;

SELECT *
FROM person
ORDER BY height ASC;

SELECT *
FROM person
ORDER BY age DESC;

SELECT *
FROM person
WHERE age >= 20;

SELECT *
FROM person
WHERE age = 18;

SELECT *
FROM person
WHERE age < 20 OR age > 30;

SELECT *
FROM person
WHERE age != 27;

SELECT *
FROM person
WHERE favorite_color != 'Red';

SELECT *
FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

SELECT *
FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

SELECT *
FROM person
WHERE favorite_color IN('Orange', 'Green', 'Blue');

SELECT *
FROM person
WHERE favorite_color IN('Yellow', 'Purple');

------------------------------------------------------------------------
-- TABLE -ORDERS

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTIGER,
    product_name TEXT,
    product_price INTEGER,
    quantity INTEGER
);

INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES(1, 'pencil', 12.99, 3
);
INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES(3, 'mtn dew', 1.99, 3
);
INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES(1, 'iphone', 900.00, 3
);
INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES(3, 'bowi knife', 59.99, 3
);
INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES(2, 'Toyota 4runner', 30000.00, 2
);
INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES(1, 'violin from the titanic', 13000.00, 1
);


----------------------------------------------------------------------

select * from orders;

select sum(quantity)
from orders;

select sum(product_price)
from orders;

select sum(product_price)
from orders
where person_id = 1;

---------------------------------------------------------------------------

INSERT INTO artist
(name)
VALUES
('Rubarbs');

INSERT INTO artist
(name)
VALUES
('Skillet');

INSERT INTO artist
(name)
VALUES
('Breaking Benjamin');
---------------------------------------------------------------------------

SELECT name
FROM artist
ORDER BY name DESC
LIMIT 10;

SELECT name
FROM artist
ORDER BY name ASC
LIMIT 5;

SELECT *
FROM artist
Where name CONTAINS 'Black';

SElECT *
FROM artist
Where name LIKE '%Black%';


-------------------------------------------------------------------------
-- TABLE EMPLOYEE

SELECT (first_name, last_name)
FROM employee
WHERE city = 'Calgary';

SELECT (birth_date)
FROM employee
ORDER BY birth_date DESC
limit 1;

SELECT (birth_date)
FROM employee
ORDER BY birth_date ASC
limit 1;

SELECT *
FROM employee
WHERE reports_to = 2
;

select count (*) 
from employee
where city = 'Lethbridge';

---------------------------------------------------------------------------
-- TABLE INVOICE

SELECT count(billing_country) 
FROM invoice
WHERE billing_country = 'USA';

SELECT (total)
FROM invoice
ORDER BY total DESC
limit 1;

SELECT (total)
FROM invoice
ORDER BY total ASC
limit 1;

SELECT * 
FROM invoice
WHERE total > 5;

SELECT COUNT (total)
from invoice
WHERE total < 5;

SELECT COUNT (billing_state)
from invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG (total)
FROM invoice;

SELECT SUM (total)
FROM invoice;



















