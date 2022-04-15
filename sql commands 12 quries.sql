---> data base
use car_rental_managemnt;


--->load the data files :
load data local infile 'C:/Program Files/MariaDB 10.6 (x64)/billing.csv'
into table billing
fields terminated by','
enclosed by'"'
lines terminated by'\n'
ignore 1 rows

--->select * from billing;
--->select * from location;
--->select * from booking;
--->select * from car;
--->select * from customer;


---> insert command
insert into customer values ('SIVA',345666,'ASI45','WOODBRIDGE')
insert into customer values ('RAVI',345886,'SQR588','HIGHPOINT')
--->update command
alter table customer rename column cust_ohnnum to cust_phnnum;
update customer set cust_name='NAVYA' where address='OAKBROOK';
 UPDATE CUSTOMER SET ADDRESS='HIGHPOINT';
--->delete command
 delete from location where city='CHICAGO';
 delete from location;
 --->select command
 select * from billing
 select booking_id,starting_date from booking;
 --->join statements
   select billing.billing_num,billing.rent_ammount
    -> from billing
    -> inner join car
    -> on billing.billing_num=car.billing_num;
    select billing.billing_num,billing.rent_ammount
    -> from billing
    -> inner join car
    -> on billing.billing_num=car.billing_num;
    select billing.billing_num,billing.rent_ammount
    -> from billing
    -> left join car
    -> on billing.billing_num=car.billing_num;
    select billing.billing_num,billing.rent_ammount,billing.penalty_ammount
    -> from billing
    -> left join car
    -> on billing.billing_num=car.billing_num;
 --->summary statements
   select sum(total_ammount) as final_ammount from billing ;
   select sum(rent_ammount) as final_ammount from billing where billing_num=101 ;
   select rent_ammount,sum(penalty_Ammount) as total, count(*) as count from billing;
---> multi tabvle query
   select billing.billing_num,car.car_model from billing,car where billing.billing_num=101;
   select billing.billing_num,car.car_model from billing,car;
     
