insert into additional_features values(
    1, 'pedal', 05.50),
    (2, 'casc', 10.25),
    (3, 'pump', 03.75),
    (4, 'lights', 04.50),
    (5, 'gps', 15.00),
    (6, 'mudguard', 05.30),
    (7, 'bike lock', 03.50),
    (8, 'spare bag', 05.75),
    (9, 'baby seat', 04.25);

insert into bikes values(
    1, 'f10', '2021', 30, 'pinarello', 2),
    (2, 'aero road cf sl', '2022',30 ,'canyon', 4 ),
    (3, 'ultimate cfr', '2022', 30, 'canyon', 5),
    (4, 'aero road cfr', '2022', 30, 'canyon', 7),
    (5, 'exceed cfr', '2022', 30, 'canyon', 6),
    (6, 'grail cf slx', '2022' ,25, 'canyon', 8),
    (7, 'endurace:On', '2022', 45,'canyon', 9),
    (8, 'spectral:On cf', '2022', 45, 'canyon', 1),
    (9, 'roadlite', '2022', 45, 'canyon', 2);

insert into sizes values(
    1, '48'),
    (2, '50'),
    (3, '52'),
    (4, '54'),
    (5, '58'),
    (6, 'M'),
    (7, 'L');

insert into additional_features_size values(
    1, 's'),
    (2, 'm'),
    (3, 'l'),
    (4, 'xl');

insert into additional_features_stock values(
    1, 1, 1),
    (2, 1, 2),
    (3, 1, 3),
    (4, 1, 4),
    (5, 1, 1),
    (6, 2, 1),
    (7, 2, 2),
    (8, 2, 3),
    (9, 2, 4),
    (10, 2, 1),
    (11, 3, 1),
    (12, 3, 2),
    (13, 3, 3),
    (14, 3, 4),
    (15, 3, 1),
    (16, 4, 1),
    (17, 4, 2),
    (18, 4, 3),
    (19, 4, 4),
    (20, 4, 1),
    (21, 5, 1),
    (22, 5, 2),
    (23, 5, 3),
    (24, 5, 4),
    (25, 5, 1),
    (26, 6, 1),
    (27, 6, 2),
    (28, 6, 3),
    (29, 6, 4),
    (30, 6, 1),
    (31, 7, 1),
    (32, 7, 2),
    (33, 7, 3),
    (34, 7, 4),
    (35, 8, 1),
    (36, 8, 2),
    (37, 8, 3),
    (38, 8, 4),
    (39, 9, 1),
    (40, 9, 2),
    (41, 9, 3),
    (42, 9, 4),
    (43, 9, 1);

insert into bike_stock(stock_id, bike_id, size_id, location_latitude, location_length) values(
    1, 1, 1, '39.568427','2.6433975'),
    (2, 1, 1, '39.568427','2.6433975'),
    (3, 1, 1, '39.568427','2.6433975'),
    (4, 1, 1, '39.568427','2.6433975'),
    (5, 1, 2, '39.9039263','3.0763213'),
    (6, 1, 2, '39.9039263','3.0763213'),
    (8, 1, 2,'39.9039263','3.0763213'),
    (10, 2, 3, '39.8452619', '3.0631885'),
    (11, 2, 3, '39.8452619', '3.0631885'),
    (13, 2, 3, '39.8452619', '3.0631885'),
    (14, 2, 4, '39.5436028', '3.3180067'),
    (16, 2, 4, '39.7593049', '3.1641826'),
    (17, 2, 4, '39.7593049', '3.1641826'),
    (18, 2, 5, '39.7593049', '3.1641826'),
    (19, 2, 5, '39.7593049', '3.1641826'),
    (20, 2, 5, '39.5733324','3.2145663'),
    (21, 2, 5, '39.5733324','3.2145663'),
    (22, 2, 5, '39.5733324','3.2145663'),
    (23, 3, 1, '39.5733324','3.2145663'),
    (24, 3, 1, '39.5691036', '2.6436303'),
    (25, 3, 1, '39.5691036', '2.6436303'),
    (27, 3, 1, '39.5691036', '2.6436303'),
    (28, 4, 1, '39.568427','2.6433975'),
    (29, 4, 2,  '39.9039263','3.0763213'),
    (30, 4, 3, '39.797544', '2.6937042'),
    (31, 4, 4, '39.8452619', '3.0631885'),
    (32, 4, 5, '39.5436028', '3.3180067');

insert into bike_stock values
    (7, 1, 2, '39.9039263','3.0763213',0),
    (9, 1, 2, '39.797544', '2.6937042', 0),
    (12, 2, 3, '39.8452619', '3.0631885',0),
    (15, 2, 4, '39.7674103', '3.144042', 0),
    (26, 3, 1, '39.5691036', '2.6436303', 0);


insert into users values(
    1, 'Raquel', 'Arques', 'Toro','Female', '1995-01-29', '42556784s'),
    (2, 'Victor', 'Bonnin', 'Palou', 'Male', '1997-08-31', '45124314M'),
    (3, 'Juan', 'Alemany', 'Pou', 'Male', '1990-05-08', '43123409L'),
    (4, 'Marta','Sard', 'Feliu','Female','1995-12-02', '42189394T'),
    (5, 'Pau', 'Amengual', 'Llado', 'Male', '1998-04-13', '42123432A'),
    (6, 'Joana','Reus','Ferrer','Female','1977-01-07', '41999235S'),
    (7, 'José Rubén','Arjona','Jiménez','Male', '2003-03-20', '47632198A'),
    (8,'Sami Said','Benyacoub','Manseur','Male','1995-05-15', '41234567C'),
    (9, 'Viktorio','Biserov','Burchin','Male','2001-10-07','48651232Y'),
    (10, 'Lluc','Carbajosa','Merino','Male','2005-08-25', '41325678R'),
    (11, 'Salvador','Helis','','Male','1981-07-02','34606068R'),
    (12,'Jeddy','Alywen','','Male','1998-06-06','57341276F');

insert into rent values(
    1, 5, 3, 9,'2023-1-10 15:10:01', '2023-1-11 19:30:24'),
    (2, 6, 10, 26, '2023-1-12 9:15:45', '2023-1-13 20:02:35'),
    (3, 4, 20, 15, '2023-1-16 8:10:35', '2023-1-18 16:20:40'),
    (4, 8, 22, 12, '2023-1-18 9:25:09', '2023-1-20 18:00:45'),
    (5, 2, 25, 7, '2023-1-21 10:31:12', '2023-1-21 21:15:32');

insert into incidents(incident_id, type, user_id, stock_id, date_time, location_latitude, location_length) values(
1, 'puncture',5,9,'2022-10-25 17:28:04','39.5706368','2.6279936'),
(2, 'broken wheel',7,10,'2022-10-12 19:13:05','39.786539','2.876434'),
(4, 'broken derailleur', 10, 30, '2022-10-27 16:02:23','39.543290','3.342834');

insert into incidents values
    (3, 'broken chain',8,28,'2022-10-20 18:10:12', '39.907034','2.974293',1);







