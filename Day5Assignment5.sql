create database Hotel;

show databases;

use Hotel;

create table Hotel(Hotel_no int primary key , 
Hotel_name varchar(200),
Hotel_address varchar(200));

select * from Hotel;

insert into Hotel(Hotel_no,Hotel_name,Hotel_address)
values(1,"rajesh","mumbai");

insert into Hotel(Hotel_no,Hotel_name,Hotel_address)
values(2,"ram","jaipur");

insert into Hotel(Hotel_no,Hotel_name,Hotel_address)
values(3,"rajesh","kolkata");

insert into Hotel(Hotel_no,Hotel_name,Hotel_address)
values(4,"Suresh","bundi");

insert into Hotel(Hotel_no,Hotel_name,Hotel_address)
values(5,"rahul","kota");

create table Room(Room_no int primary key,
Hotel_no int,
Hotel_Type varchar(200),
Hotel_price varchar(200),
foreign key (Hotel_no) references Hotel(Hotel_no));

select * from Room;

insert into Room(Room_no, Hotel_no, Hotel_Type, Hotel_price)
values(101,1,"family","15,000");

insert into Room(Room_no, Hotel_no, Hotel_Type, Hotel_price)
values(102,2,"family","15,000");

insert into Room(Room_no, Hotel_no, Hotel_Type, Hotel_price)
values(103,3,"couple","30,000");

insert into Room(Room_no, Hotel_no, Hotel_Type, Hotel_price)
values(104,4,"family","15,000");

insert into Room(Room_no, Hotel_no, Hotel_Type, Hotel_price)
values(105,5,"couple","25,000");

create table Guest(Guest_no int ,
Guest_name varchar(200),
Guest_address varchar(200));

select * from Guest;

insert into Guest(Guest_no,Guest_name,Guest_address)
values(1,"ramesh","kota");

insert into Guest(Guest_no,Guest_name,Guest_address)
values(2,"harshit","jaipur");

insert into Guest(Guest_no,Guest_name,Guest_address)
values(3,"ram","mumbai");

insert into Guest(Guest_no,Guest_name,Guest_address)
values(4,"Tofik","Newyork");

insert into Guest(Guest_no,Guest_name,Guest_address)
values(5,"rajveer","Newyork");

drop table Room;
drop table Guest;
drop table Booking;

create table Booking(Hotel_no int primary key,
Guest_no int ,
Date_from date,
Date_To date,
Room_no int,
foreign key(Hotel_no) references Hotel(Hotel_no),
foreign key (Room_no) references Room(Room_no) );

select*from Booking;

insert into Booking(Hotel_no,Guest_no,Date_from,Date_To,Room_no)
values(1,1,"2022-11-20","2022-11-25",101);

insert into Booking(Hotel_no,Guest_no,Date_from,Date_To,Room_no)
values(2,3,"2022-11-15","2022-11-21",102);

insert into Booking(Hotel_no,Guest_no,Date_from,Date_To,Room_no)
values(3,4,"2022-11-21","2022-11-27",103);

insert into Booking(Hotel_no,Guest_no,Date_from,Date_To,Room_no)
values(4,1,"2022-11-17","2022-11-23",104);

insert into Booking(Hotel_no,Guest_no,Date_from,Date_To,Room_no)
values(5,5,"2022-11-25","2022-11-30",105);

select * from Booking;