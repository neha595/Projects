--define relations /attributes

--ATTRIBUTES

--Attributes are characteristics or properties of an entity,relationship or another attribute.

--RELATIONS

--Realtionships are connections or associations between entities and can be one-to-one ,one-to-many,or many-to-many.


--DEFINE PRIMARY KEYS

--The primary key constraint uniquely identifies each record in a table.
--It must contain unique values and cannot contain NULL values.
--Atable can have only one primary key.

create table roll(id int primary key,role_name varchar(100))

insert into roll values(1,'manager'),
                        (2,'asst manager')


create table user_account2(id int primary key,user_namee varchar(100),email varchar(254),password varchar(200),password_salt varchar(50) null,password_hash_algorithm varchar(50))

insert into user_account2 values(4,'madhu','madhu@gmail.com','madhu','fub','hgu'),(2,'neha','neha@gmail.com','neha','uhj','poi')

create table user_has_rolll(id int primary key,role_start_time datetime,role_end_time datetime null,user_account_id int foreign key references user_account2(id),role_id int foreign key references roll(id))

insert into user_has_rolll(id,role_start_time,user_account_id,role_id) values(5,'2022-04-21 10:12:45',9,10),
                                (6,'2022-05-22 11:16:10',8,11)


create table statuss(id int primary key,status_name varchar(100),is_user_working bit)

insert into statuss values(7,'dude','0'),
                   (2,'out','1')

create table user_has_statuss(id int primary key,status_start_time datetime,status_end_time datetime null,user_account_id int foreign key references user_account2(id),status_id int references statuss(id))

insert into user_has_statuss values(21,'2022-02-21 10:21:19','2022-10-14 10:11:21',2,10),
                                   (22,'2022-02-21 10:21:19','2022-10-14 10:11:21',1,11)


delete from roll

delete from user_account2

delete from user_has_statuss

delete from user_has_rolll

delete from statuss

