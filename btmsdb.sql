

/*6.	Bangalore Traffic Police is the vehicular traffic management division of Bangalore City Police. 
They manage and monitor day-to-day traffic scenarios in the city. They make sure that the vehicle users 
observe the traffic rules failing which they are levied fines depending upon the nature of violation. 
They maintain data about fines collected, rules violated, accidents occurred, casualties etc., on day-to-day
 basis. They also supply agencies with statistics/summary about accidents occurred, daily/monthly collection
 of fines for violations of various nature, per-road day-to-day vehicular movements, per-road pollution levels,
 frequency and cause of traffic jams etc., for improvisation of traffic management machinery. 
 They also maintain traffic management equipments like traffic lights, monitoring cameras, CCTVs etc at
 various points/junctions on city roads. Create a web-based/form-based application to cater to this need.*/
use btmsdb

create view casualty_view as select * from casualty


create table Rules_violation
(
Violation_ID int(100) NOT NULL AUTO_INCREMENT ,
Violation_Desc	varchar(100),
Vehicle_No	int,
Vehicle_Type	varchar(50),
Violation_Place	varchar(50),
Violation_dt_time datetime,
Violator_Age int(20),
PRIMARY KEY(Violation_ID)
)

 
create table fines
(
Violation_ID int(100),
Fine_Amount	int,
Fine_dt_time datetime,
fine_desc varchar(100)
)

create table accidents 
(
Accident_ID 		int(100) NOT NULL AUTO_INCREMENT PRIMARY KEY,
Accident_Location	varchar(100),
Accident_dt_time 	datetime,
Accident_Reason		varchar(100),
Vehicle_No		int,
No_Person_Affected	int
)

create table casualty
(
Accident_ID int(20),
casualty_name	varchar(100),
casualty_address varchar(100),
casualty_sex varchar(10),
casualty_age	int,
casualty_color varchar(20),
Death_Reason	varchar(100),
Admitted_Hospital varchar(100)
)

create table injury
(
Accident_ID int(20),
patient_name varchar(20),
patient_age int(20),
patient_address varchar(100),
injury_type varchar(100)
)


create table equipments
(
Equipment_id   int(100) NOT NULL AUTO_INCREMENT PRIMARY KEY,
Equipment_code varchar(20),
Equipment_Purchase_Date	DATE,
Equipment_Damage_Ind varchar(20),
Equipment_price		int
)

create table traffic
(
/*Equipment_id int,*/
Traffic_Ind	varchar(20),
Traffic_Loc	varchar(200),
Traffic_Dt_Time datetime,
Traffic_Video_Path	varchar(1000)
)

create table pollution
(
Area_Polluted varchar(20),
Pollution_Level_ppm float(20),
Pollution_Dt_Time datetime
)


insert into Rules_Violation values(100,'Over Speed',5802,'Honda Activa','Marathahalli','2013/04/25',27);
insert into Rules_Violation values(101,'Drunk Driving',8017,'Maruti Alto','Malleshwaram','2015/08/27',67);
insert into Rules_Violation values(102,'Mobile phones',6603,'Mahindra Scorpio','Hebbal','2012/04/08',35);
insert into Rules_Violation values(103,'Driving without helmet',9759,'Mercedes Benz','Indira Nagar','2017/11/17',42);
insert into Rules_Violation values(104,'Driving in footpath',1316,'Royal Enfield','Koramangala','2018/03/26',78);
insert into Rules_Violation values(105,'Red light jumping',1268,'Harley Davidson','Banshankari','2014/06/12',96);


insert into fines values(100,100,'2013-04-25','Over Speed');
insert into fines values(101,500,'2015/08/27','Drunk Driving');
insert into fines values(102,100,'2012/04/08','Mobile phones');
insert into fines values(103,100,'2017/11/17','Driving without helmet');
insert into fines values(104,1000,'2018/03/26','Driving in footpath');
insert into fines values(105,50,'2014/06/12','Red light jumping');
insert into fines values(500,1000,'1992/02/16','No License');

insert into accidents values(200,'Marathahalli','2014-07-05','Overtaking',4587,1);
insert into accidents values(201,'Basavanagudi','2012-08-30','Driving without helmet',9759,1);
insert into accidents values(202,'Whitefield','2009-10-15','Driving in footpath',1268,1);
insert into accidents values(203,'Indira Nagar','2017-02-28','Fog',5566,1);
insert into accidents values(204,'Malleshwaram','2018-01-14','Break failure',8017,1);
insert into accidents values(205,'Hebbal','2015-12-27','Red light jumping',4242,1);

insert into casualty values(100,'Rahul','Marathahalli','M',28,'Fair','Brain damage','Y');
insert into casualty values(101,'Shilpa','BTM Layout','F',25,'Dusk','Spot dead','N');
insert into casualty values(302,'Reeta','Hebbal','F',18,'Fair','Blood clot','Y');
insert into casualty values(303,'Kumar','Whitefield','M',78,'Fair','Spinal cord injury','N');
insert into casualty values(104,'Manjunath','Indira Nagar','M',20,'Dusk','Brain damage','N');
insert into casualty values(505,'Deepa','Basavanagudi','F',45,'Fair','Blood loss','Y');

insert into injury values(400,'Garima',25,'Hebbal','Leg fracture');
insert into injury values(401,'Deepak',67,'Whitefield','Brain injury');
insert into injury values(102,'Hemanth',56,'BTM Layout','Spinal cord damage');
insert into injury values(103,'Pooja',42,'Indira Nagar','Wrist fracture');
insert into injury values(404,'Nirmal',39,'Koramangala','Leg fracture');
insert into injury values(405,'Preethi',22,'Bilekahalli','Neck collapse');

insert into equipments values(500,1001,'2016-09-03','Y',2000);
insert into equipments values(501,1002,'2016-11-26','N',500);
insert into equipments values(502,1003,'2017-02-17','Y',1500);
insert into equipments values(503,1004,'2017-04-23','Y',5000);
insert into equipments values(504,1005,'2018-01-06','N',2500);
insert into equipments values(505,1006,'2018-04-16','Y',7000);

insert into traffic values('Y','Koramangala','2017-04-27','Y');
insert into traffic values('Y','Marathahalli','2017-06-18','N');
insert into traffic values('N','Whitefield','2017-08-26','Y');
insert into traffic values('Y','Silk Board','2017-11-16','Y');
insert into traffic values('N','Madiwala','2018-01-27','N');
insert into traffic values('Y','Koramangala','2018-03-10','Y');

insert into pollution values('Whitefield',135,'2017-09-16');
insert into pollution values('Koramangala',80,'2017-11-09');
insert into pollution values('Airport',92,'2017-12-27');
insert into pollution values('MG Road',110,'2018-01-16');
insert into pollution values('Marathahalli',126,'2018-03-28');
insert into pollution values('Bommanahalli',72,'2018-04-17');