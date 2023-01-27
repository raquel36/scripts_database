# scripts_database
DDL, DML, delete and drop
![database_bikes (1)](https://user-images.githubusercontent.com/119154158/215225401-b03db6a9-aace-4cde-bf9b-1ba337708e3e.png)
## More interesting queries
```
Query to know the age of each user indicating the name concatenated with their first last name  
select concat(name, ' ', surname1) as user, extract(year from curdate())-extract(year from birthday)   
+(CASE WHEN extract(month from birthday)<extract(month from curdate()) THEN 1  
ELSE 0 END) as 'years old' from users;  
```
```
data update   
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
```
```
Query that shows the rental number, the name and surname of the user,  
the model, brand and name of the additional_feature  
select rent.rent_id, users.name, users.surname1, users.surname2,  
bikes.model, bikes.brand, additional_features.name  
from rent  
join bike_stock on rent.stock_id=bike_stock.stock_id   
join bikes on bike_stock.bike_id=bikes.bike_id  
join additional_features on bikes.additional_feature_id=additional_features.additional_feature_id  
join users on rent.user_id=users.user_id;  
```
```
Query to show how much the rental of a  
bike endurace: ON for 5 days and showing the value in €  
select model, concat(bikes.price_day*5+additional_features.price_day*5, " €")   
as total_price  
from bikes, additional_features  
where bikes.additional_feature_id=additional_features.additional_feature_id  
and model = "endurace:On";  
```
