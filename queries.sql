/*Query que muestra el número de bicicleta, su modelo, su precio
y additional features como elements*/
select bike_id, model, bikes.price_day, additional_features.name as elements 
from bikes, additional_features 
where bikes.additional_feature_id=additional_features.additional_feature_id;
/*Query result
+---------+-----------------+-----------+-----------+
| bike_id | model           | price_day | elements  |
+---------+-----------------+-----------+-----------+
|       1 | f10             |        30 | casc      |
|       2 | aero road cf sl |        30 | lights    |
|       3 | ultimate cfr    |        30 | gps       |
|       4 | aero road cfr   |        30 | bike lock |
|       5 | exceed cfr      |        30 | mudguard  |
|       6 | grail cf slx    |        25 | spare bag |
|       7 | endurace:On     |        45 | baby seat |
|       8 | spectral:On cf  |        45 | pedal     |
|       9 | roadlite        |        45 | casc      |
+---------+-----------------+-----------+-----------+
*/
/* Query que muestra todos los datos de los usuarios que su nombre empieza por J */
select * from users where name like 'J%';
/*Query result
+---------+--------------+----------+----------+--------+------------+-----------+
| user_id | name         | surname1 | surname2 | gender | birthday   | DNI       |
+---------+--------------+----------+----------+--------+------------+-----------+
|       3 | Juan         | Alemany  | Pou      | Male   | 1990-05-08 | 43123409L |
|       6 | Joana        | Reus     | Ferrer   | Female | 1977-01-07 | 41999235S |
|       7 | José Rubén   | Arjona   | Jiménez  | Male   | 2003-03-20 | 47632198A |
|      12 | Jeddy        | Alywen   |          | Male   | 1998-06-06 | 57341276F |
+---------+--------------+----------+----------+--------+------------+-----------+
*/
/* Query que muestre los nombres, apellidos y genero de los usuarios ordenados por nombre*/
select name, surname1, surname2, gender from users order by name;
/* Query result
+--------------+-----------+----------+--------+
| name         | surname1  | surname2 | gender |
+--------------+-----------+----------+--------+
| Jeddy        | Alywen    |          | Male   |
| Joana        | Reus      | Ferrer   | Female |
| José Rubén   | Arjona    | Jiménez  | Male   |
| Juan         | Alemany   | Pou      | Male   |
| Lluc         | Carbajosa | Merino   | Male   |
| Marta        | Sard      | Feliu    | Female |
| Pau          | Amengual  | Llado    | Male   |
| Raquel       | Arques    | Toro     | Female |
| Salvador     | Helis     |          | Male   |
| Sami Said    | Benyacoub | Manseur  | Male   |
| Victor       | Bonnin    | Palou    | Male   |
| Viktorio     | Biserov   | Burchin  | Male   |
+--------------+-----------+----------+--------+
/*
/* Query que muestre el numero, el modelo, el brand y el precio por dia mínimo de una bicicleta como min_price*/
select bike_id, model, brand, min(price_day) as min_price from bikes;
/* Query result
+---------+-------+-----------+-----------+
| bike_id | model | brand     | min_price |
+---------+-------+-----------+-----------+
|       1 | f10   | pinarello |        25 |
+---------+-------+-----------+-----------+
*/

/*Sabiendo el precio mínimo, realizo una query que muestre los mismos datos anteriores pero sobre el stock de bicicletas*/
select model, brand, bikes.price_day as min_price
from bikes, bike_stock where bikes.bike_id=bike_stock.bike_id
and bikes.price_day like 25;
/* Empty set (0.001 sec)*/
/* No hay stock de esta bicicleta*/



/*Relación entre la tabla rent y bikes mostrando el número, el modelo y la brand*/
select rent.rent_id, bike_stock.stock_id, bikes.model, bikes.brand from rent
join bike_stock on rent.stock_id=bike_stock.stock_id 
join bikes on bike_stock.bike_id=bikes.bike_id;
/* Query result
+---------+----------+-----------------+-----------+
| rent_id | stock_id | model           | brand     |
+---------+----------+-----------------+-----------+
|       1 |        3 | f10             | pinarello |
|       2 |       10 | aero road cf sl | canyon    |
|       3 |       20 | aero road cf sl | canyon    |
|       4 |       22 | aero road cf sl | canyon    |
|       5 |       25 | ultimate cfr    | canyon    |
+---------+----------+-----------------+-----------+
*/
/* Query para encontrar una bicicleta con un precio específico por día*/
select * from bikes where price_day=45;
/* Query result
+---------+----------------+------+-----------+--------+-----------------------+
| bike_id | model          | year | price_day | brand  | additional_feature_id |
+---------+----------------+------+-----------+--------+-----------------------+
|       7 | endurace:On    | 2022 |        45 | canyon |                     9 |
|       8 | spectral:On cf | 2022 |        45 | canyon |                     1 |
|       9 | roadlite       | 2022 |        45 | canyon |                     2 |
+---------+----------------+------+-----------+--------+-----------------------+
*/
/*Query para ordenar los precios de las bicicletas de mayor a menor*/
select * from bikes order by price_day desc;
/* Query result
+---------+-----------------+------+-----------+-----------+-----------------------+
| bike_id | model           | year | price_day | brand     | additional_feature_id |
+---------+-----------------+------+-----------+-----------+-----------------------+
|       7 | endurace:On     | 2022 |        45 | canyon    |                     9 |
|       8 | spectral:On cf  | 2022 |        45 | canyon    |                     1 |
|       9 | roadlite        | 2022 |        45 | canyon    |                     2 |
|       1 | f10             | 2021 |        30 | pinarello |                     2 |
|       2 | aero road cf sl | 2022 |        30 | canyon    |                     4 |
|       3 | ultimate cfr    | 2022 |        30 | canyon    |                     5 |
|       4 | aero road cfr   | 2022 |        30 | canyon    |                     7 |
|       5 | exceed cfr      | 2022 |        30 | canyon    |                     6 |
|       6 | grail cf slx    | 2022 |        25 | canyon    |                     8 |
+---------+-----------------+------+-----------+-----------+-----------------------+
*/
/* Query con el mismo resultado anterior pero excluyendo additional_feature_id y el año*/
select bike_id, model, brand, price_day from bikes order by price_day desc;
/*
+---------+-----------------+-----------+-----------+
| bike_id | model           | brand     | price_day |
+---------+-----------------+-----------+-----------+
|       7 | endurace:On     | canyon    |        45 |
|       8 | spectral:On cf  | canyon    |        45 |
|       9 | roadlite        | canyon    |        45 |
|       1 | f10             | pinarello |        30 |
|       2 | aero road cf sl | canyon    |        30 |
|       3 | ultimate cfr    | canyon    |        30 |
|       4 | aero road cfr   | canyon    |        30 |
|       5 | exceed cfr      | canyon    |        30 |
|       6 | grail cf slx    | canyon    |        25 |
+---------+-----------------+-----------+-----------+
*/
/* Query para mostrar los precios por dia de las bicicletas entre 25 y 30*/
select bike_id, model, brand, price_day from bikes where price_day between 25 and 30;
/*
+---------+-----------------+-----------+-----------+
| bike_id | model           | brand     | price_day |
+---------+-----------------+-----------+-----------+
|       1 | f10             | pinarello |        30 |
|       2 | aero road cf sl | canyon    |        30 |
|       3 | ultimate cfr    | canyon    |        30 |
|       4 | aero road cfr   | canyon    |        30 |
|       5 | exceed cfr      | canyon    |        30 |
|       6 | grail cf slx    | canyon    |        25 |
+---------+-----------------+-----------+-----------+
*/
/* Query para mostrar cuanto constaría el alquiler de una 
bicicleta endurace:ON durante 5 dias y mostrando el valor en €*/
select model, concat(bikes.price_day*5+additional_features.price_day*5, " €") 
as total_price
from bikes, additional_features
where bikes.additional_feature_id=additional_features.additional_feature_id
and model = "endurace:On";
/* Query result 
+-------------+-------------+
| model       | total_price |
+-------------+-------------+
| endurace:On | 246.25 €    |
+-------------+-------------+
*/
/* Query para calcular la media de precio por día de las bicicletas*/
select avg(price_day) as half_price from bikes;
/* Query result
+------------+
| half_price |
+------------+
|    34.4444 |
+------------+
*/
/* Query que muestra la lista de brand no redundante */
select distinct brand from bikes;
/* Query result
+-----------+
| brand     |
+-----------+
| pinarello |
| canyon    |
+-----------+
*/
/* Query que muestra el numero de rent, el nombre y apellidos del usuario,
el modelo, brand y nombre del additional_feature*/
select rent.rent_id, users.name, users.surname1, users.surname2,
bikes.model, bikes.brand, additional_features.name
from rent
join bike_stock on rent.stock_id=bike_stock.stock_id 
join bikes on bike_stock.bike_id=bikes.bike_id
join additional_features on bikes.additional_feature_id=additional_features.additional_feature_id
join users on rent.user_id=users.user_id;
/*
+---------+-----------+-----------+----------+-----------------+-----------+--------+
| rent_id | name      | surname1  | surname2 | model           | brand     | name   |
+---------+-----------+-----------+----------+-----------------+-----------+--------+
|       1 | Pau       | Amengual  | Llado    | f10             | pinarello | casc   |
|       2 | Joana     | Reus      | Ferrer   | aero road cf sl | canyon    | lights |
|       3 | Marta     | Sard      | Feliu    | aero road cf sl | canyon    | lights |
|       4 | Sami Said | Benyacoub | Manseur  | aero road cf sl | canyon    | lights |
|       5 | Victor    | Bonnin    | Palou    | ultimate cfr    | canyon    | gps    |
+---------+-----------+-----------+----------+-----------------+-----------+--------+
*/


/* Query que muestra la intersección entre bicicletas de marca "canyon"
y precio por dia igual a 30*/
(select model, brand, price_day from bikes where brand="canyon")
intersect
(select model, brand, price_day from bikes where price_day=30);
/*
+-----------------+--------+-----------+
| model           | brand  | price_day |
+-----------------+--------+-----------+
| aero road cf sl | canyon |        30 |
| ultimate cfr    | canyon |        30 |
| aero road cfr   | canyon |        30 |
| exceed cfr      | canyon |        30 |
+-----------------+--------+-----------+
*/
/* Creación de una columna nueva en la tabla users, la columna mail*/
alter table users add mail varchar(50);
/* Insertamos datos en la columna creada*/
update users set mail = (CASE
WHEN user_id = 1 THEN 'rarquestoro@cifpfbmoll.eu'
WHEN user_id = 2 THEN 'vbonninpalou@cifpfbmoll.eu'
WHEN user_id = 3 THEN 'alemanyjuan@gmail.com'
WHEN user_id = 4 THEN 'sardfeliu@gmail.com'
WHEN user_id = 5 THEN 'pauet@gmail.com'
WHEN user_id = 6 THEN 'joanareus@hotmail.com'
WHEN user_id = 7 THEN 'jruben@gmail.com'
WHEN user_id = 8 THEN 'sbenyacoub@yahoo.es'
WHEN user_id = 9 THEN 'vburchin@gmail.es'
WHEN user_id = 10 THEN 'lmerino@outlook.com'
WHEN user_id = 11 THEN 'shelis0@ning.com'
WHEN user_id = 12 THEN 'jalywen2q@quantcast.com'
END);

/* Query para dar la bienvenida a los usuarios a la web por su nombre y primer apellido*/
select concat("Welcome, ",name, ' ', surname1,", to our bike rental website. ")
from users;
/*Query para saber la edad de cada usuario indicando el nombre concatenado con su primer apellido*/
select concat(name, ' ', surname1) as user, extract(year from curdate())-extract(year from birthday) 
+(CASE WHEN extract(month from birthday)<extract(month from curdate()) THEN 1
ELSE 0 END) as 'years old' from users;
/*
+---------------------+-----------+
| user                | years old |
+---------------------+-----------+
| Raquel Arques       |        28 |
| Victor Bonnin       |        26 |
| Juan Alemany        |        33 |
| Marta Sard          |        28 |
| Pau Amengual        |        25 |
| Joana Reus          |        46 |
| José Rubén Arjona   |        20 |
| Sami Said Benyacoub |        28 |
| Viktorio Biserov    |        22 |
| Lluc Carbajosa      |        18 |
| Salvador Helis      |        42 |
| Jeddy Alywen        |        25 |
+---------------------+-----------+
*/