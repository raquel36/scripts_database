create table bikes(
    bike_id int not null,
    model varchar(50) not null,
    year varchar(4) not null,
    price_day int(3) not null,
    brand varchar(50) not null,
    additional_feature_id int not null,
    primary key(bike_id)
);

create  table additional_features(
    additional_feature_id int not null,
    name varchar(50) not null,
    price_day decimal(5,2) not null,
    primary key(additional_feature_id)
);

alter table bikes add constraint bikes_feature_fk 
foreign key(additional_feature_id) references additional_features(additional_feature_id);

create table sizes(
    size_id int not null,
    size varchar(2) not null,
    primary key(size_id)
);

create table additional_features_size(
    additional_feature_size_id int not null,
    size varchar(2) not null,
    primary key(additional_feature_size_id)
);
create table additional_features_stock(
    additional_feature_stock_id int not null,
    additional_feature_id int not null,
    additional_feature_size_id int not null,
    primary key(additional_feature_stock_id)
);
alter table additional_features_stock add constraint feature_fk
foreign key(additional_feature_id) references additional_features(additional_feature_id);

alter table additional_features_stock add constraint feature_size_fk
foreign key(additional_feature_size_id) references additional_features_size(additional_feature_size_id);

create table bike_stock(
    stock_id int not null,
    bike_id int not null,
    size_id int not null,
    location_latitude varchar(50) not null,
    location_length varchar(50) not null,
    availability tinyint(1) default 1,
    primary key(stock_id)
);

alter table bike_stock add constraint bike_stock_fk
foreign key(bike_id) references bikes(bike_id);

alter table bike_stock add constraint bike_stock_size_fk
foreign key(size_id) references sizes(size_id);


create table users(
    user_id int not null,
    name varchar(20) not null,
    surname1 varchar(50) not null,
    surname2 varchar(50),
    gender varchar(10),
    birthday date,
    DNI varchar(20) not null,
    primary key(user_id)
);

create table rent(
    rent_id int not null,
    user_id int not null,
    stock_id int not null,
    additional_feature_stock_id int,
    date_time_start datetime not null,
    date_time_end datetime,
    primary key(rent_id)
);

alter table rent add constraint user_rent_fk
foreign key(user_id) references users(user_id);

alter table rent add constraint bike_rent_fk
foreign key(stock_id) references bike_stock(stock_id);

create table incidents(
    incident_id int not null,
    type varchar(20) not null,
    user_id int not null,
    stock_id int not null,
    date_time datetime not null,
    location_latitude varchar(20) not null,
    location_length varchar(20) not null,
    solved tinyint(1) default 0,
    primary key(incident_id)
);

alter table incidents add constraint user_incident_fk
foreign key(user_id) references users(user_id);

alter table incidents add constraint stock_incidents_fk
foreign key(stock_id) references bike_stock(stock_id);






