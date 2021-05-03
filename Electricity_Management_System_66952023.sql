drop database if exists Electricity_management_System_66952023;
create database Electricity_management_System_66952023;
use Electricity_management_System_66952023;




create table person(
	 personid varchar(25),
	 firstname varchar(50) not null, 
	 lastname varchar(50) not null,
	 Age int not nulll,
	 gender enum('male','female'),
	 phonenum int not null, 
	 address varchar(50) not null, 
	 city varchar(50) not null, 
	 CONSTRAINT PKperson PRIMARY KEY (personid)
);

-- INSERTION FOR PERSON CUSTOMER--
insert into person values('Cust0001','Hidaya','seidu',19,'female',0207611117,'p.o.Box,AK 43,Anloga-kumasi','kumasi');
insert into person values('Cust0002','Issah','Bello',16,'male',0207616767,'Court 5A3 SSNIT Flats','Accra');
insert into person values('Cust0003','Bushira','Ahmed',14,'female',0207617687,'1022 Awudome Estates','Tema');
insert into person values('Cust0004','Issah','Bello',16,'male',0207616767,'23 Jones Nelsom Road. Adabraka Dansoman GT DS230','Accra');
insert into person values('Cust0005','Iddrish','Adam',19,'male',0547235780,'Legon Mall, 2nd Floor, EPP Books Services Floor','kumasi');
insert into person values('Cust0006','Ayisha','Alhassan',39,'female',0207611117,'Agyiga Zongo p.o. box 2591','kumasi');
insert into person values('Cust0007','Safura','MK',42,'female',0207616767,'669 Jones Nelson Rd','Takoradi');
insert into person values('Cust0008','Bushira','saluhudeen',53,'female',0207617687,'B 52, FADAMA STREET, OPP OMAN FOFOR, GRAPHIC','Accra');
insert into person values('Cust0009','Afifa','Suraj',32,'male',0207616767,'P.O.Box TA 574, Taifa - Accra','Accra');
insert into person values('Cust00010','Iddrish','Adam',34,'male',0548735780,'23 Jones Nelsom Road. Adabraka GT P.O Box DS230','cape coast');

-- insertion of person Employee
insert into person values('Emp0001','Hubaida','Abdul Wahab',67,'female',0207611117,'23 Jones Nelsom Road. Adabraka GT P.O Box DS230','kumasi');
insert into person values('Emp0002','Ayisha','Nuhu',57,'female',0207616767,'23 Jones Nelsom Road. Adabraka Dansoman GT DS230','Accra');
insert into person values('Emp0003','Issahka','Umar',41,'male',0207617687,'P.O. BOX NB 639','Tema');
insert into person values('Emp0004','Shamuna','Mohammed',43,'male',0207616767,'F259/5 Ndabaningi st.','Accra');
insert into person values('Emp0005','Eunice','Otii',64,'male',0547235780,'C655/3, 5th Crescent','kumasi');
insert into person values('Emp0006','Farida ','Eleshin',39,'female',0207611117,'BOX GP 4417','kumasi');
insert into person values('Emp0007','Rukaiya','Abdullah',42,'female',0207616767,'BLK 71 B6 SSNIT ADENTA','Takoradi');
insert into person values('Emp0008','Grace','Obour',53,'female',0207617687,'1st & 2nd Floor Marcofi House, Osu.','Accra');
insert into person values('Emp0009','Malik','Saidu',32,'male',0207616767,'Marcofie House, OSU','Accra');
insert into person values('Emp00010','Mustapha','Mahmud',34,'male',0548735780,'Suite #2, 2Fl., Glory House (Opp.Neoplan)','cape coast');


-- select* from person--
/*The table that stores the details of the departments such as id, name, start and end date and 
the remarks if any---*/

create table department ( 
	 deptid int auto_increment , 
	 deptname varchar(50) not null, 
	 startdate datetime default   CURRENT_TIMESTAMP, 
	 closedate date default null, 
	 remarks varchar(100), 
	 primary key (deptid) 
); 

Alter table department auto_increment=50;
insert into department(deptname,closedate,remarks) values('Service','2022-09-23','manages services');
insert into department(deptname,closedate,remarks) values('production','2023-09-23','In charge of production');
insert into department(deptname,closedate,remarks) values('Human resource management','2023-09-23','in charge of welfare');
insert into department(deptname,closedate,remarks) values('sales','2022-11-26','manages sales');
insert into department(deptname,closedate,remarks) values('marketing ','2023-07-23','In charge of marketing');
insert into department(deptname,closedate,remarks) values('purchasing','2024-12-23','in charge of production');
insert into department(deptname,closedate,remarks) values('Information Technology','2024-01-23','In charge of IT services');
insert into department(deptname,closedate,remarks) values('operations','2023-09-23','In charge of management');
insert into department(deptname,closedate,remarks) values('Finance and Accounting','2023-09-23','in charge of finance');
insert into department(deptname,closedate,remarks) values('General management','2026-08-29','in charge of general management');

-- select* from department;

/*The e position table that stores the position id, department and level and name of 
position*/ 
create table position ( 
	 posid int auto_increment , 
	 deptid int not null, 
	 levelid int not null, 
	 posname varchar(50) not null, 
	 primary key (posid), 
	 foreign key (deptid) references department (deptid) on delete cascade 
); 

ALter table position auto_increment=10;
insert into position (deptid,levelid,posname) values(50,001,'Technical assisstant');
insert into position (deptid,levelid,posname) values(50,002,'Service manager');
insert into position (deptid,levelid,posname) values(51,003,'production manager');
insert into position (deptid,levelid,posname) values(51,004,'production coordinator');
insert into position (deptid,levelid,posname) values(52,005,'General manager');
insert into position (deptid,levelid,posname) values(52,006,'Resource planner');
insert into position (deptid,levelid,posname) values(53,007,'sales specialist');
insert into position (deptid,levelid,posname) values(53,008,'Sales manager');
insert into position (deptid,levelid,posname) values(54,009,'Analytics specialist');
insert into position (deptid,levelid,posname) values(54,0010,'SEO');
insert into position (deptid,levelid,posname) values(55,0011,' coordinator');
insert into position (deptid,levelid,posname) values(56,0012,'computer and database management teams');
insert into position (deptid,levelid,posname) values(57,0013,'Technical assisstant');
insert into position (deptid,levelid,posname) values(58,0014,'Budget Analysist');
insert into position (deptid,levelid,posname) values(59,0015,'CEO');
insert into position (deptid,levelid,posname) values(58,0016,'Branch manager');
insert into position (deptid,levelid,posname) values(56,0017,'Hardware Technician');
insert into position (deptid,levelid,posname) values(56,0018,'trainee');
insert into position (deptid,levelid,posname) values(59,0019,'supervisor');
 select*from position;


/*The premise table is particularly to identify the address of the customer */
create table premise ( 
	 premiseid int  auto_increment, 
	 address varchar(50) not null, 
	 city varchar(50) not null, 
	 pincode numeric(6) not null, 
	 ownedby varchar(50) not null, 
	 primary key (premiseid), 
	 unique(premiseid,address,city,pincode)
); 
 
 insert into premise(address,city,pincode,ownedby) values('#38, Accra-Tema Motorway Industrial Area','Tema',001,'Madam Hajara');
 insert into premise(address,city,pincode,ownedby) values('P. O. Box CT 8881,','Koforidua',002,'Mr.Salifu');
  insert into premise(address,city,pincode,ownedby) values('30 St James Street','Accra',003,'Mr.Saddique');
 insert into premise(address,city,pincode,ownedby) values('420 Eastgate Dr','Kumasi',004,'Abdul Wahab');
  insert into premise(address,city,pincode,ownedby) values('c/o Avornu Selase Norbert','Sunyani',005,'Mr.Razak');
 insert into premise(address,city,pincode,ownedby) values('27 faanofaa rd kokomlemle','Tamale',006,'Mma Maria');
  insert into premise(address,city,pincode,ownedby) values('C142 / 16 Alajo Accra / Ghana','Bolgatanga',007,'Mr.Eleshin');
 insert into premise(address,city,pincode,ownedby) values('No.7 cashew street','Takoradi',008,'Alhaji Nuhu');
 insert into premise(address,city,pincode,ownedby) values('C39/10 FREETOWN AVENUE','Obuasi',009,'Hajia Safura');
 insert into premise(address,city,pincode,ownedby) values('Oxford Street,Osu-Accra/Ghana','Wa',0010,'Lukman');


/*The meter details of the customer */
create table meter_equip ( 
	 meterid int auto_increment , 
	 premiseid int not null, 
	 installdate datetime default   CURRENT_TIMESTAMP, 
	 devicetype varchar(1) check(devicetype in ('r','c')) not null, 
	 remarks varchar(50) not null, 
	 primary key (meterid), 
	 unique(meterid,premiseid), 
	 foreign key (premiseid) references premise (premiseid) on delete cascade
); 

Alter table meter_equip auto_increment=60;
insert into meter_equip(premiseid,devicetype,remarks) values(1,'r','cleared');
insert into meter_equip(premiseid,devicetype,remarks) values(2,'c','owing');
insert into meter_equip(premiseid,devicetype,remarks) values(3,'r','cleared');
insert into meter_equip(premiseid,devicetype,remarks) values(4,'c','owing');
insert into meter_equip(premiseid,devicetype,remarks) values(5,'r','cleared');
insert into meter_equip(premiseid,devicetype,remarks) values(6,'c','owing');
insert into meter_equip(premiseid,devicetype,remarks) values(7,'r','cleared');
insert into meter_equip(premiseid,devicetype,remarks) values(8,'c','owing');
insert into meter_equip(premiseid,devicetype,remarks) values(9,'r','cleared');
insert into meter_equip(premiseid,devicetype,remarks) values(10,'c','owing');
/*Types of accounts a customer can have */
create table accttype ( 
	 acctcode int auto_increment, 
	 discount int not null, 
	 accout_type enum('debit','card') not null, 
	 primary key (acctcode) 
); 

ALter table accttype auto_increment=100;
insert into accttype(discount,accout_type) values(100,'debit');
insert into accttype(discount,accout_type) values(67,'debit');
insert into accttype(discount,accout_type) values(10,'card');
insert into accttype(discount,accout_type) values(67,'debit');
insert into accttype(discount,accout_type) values(90,'debit');
insert into accttype(discount,accout_type) values(87,'debit');
insert into accttype(discount,accout_type) values(10,'card');
insert into accttype(discount,accout_type) values(67,'card');
insert into accttype(discount,accout_type) values(10,'card');
insert into accttype(discount,accout_type) values(67,'card');
 

/*The details of the employees that are working in the company and The salaries that are paid to the emplyees */ 
create table employees ( 
	 employeeid varchar(25) primary key, 
	 hiredate datetime default   CURRENT_TIMESTAMP, 
	 enddate date default null, 
	 deptid int not null, 
	 posid int not null,  
     salary decimal(10,2),
     commission decimal(7,2) null,
	 foreign key (deptid) references department (deptid) on delete cascade, 
	 foreign key (posid) references position (posid) on delete cascade ,
	 foreign key(employeeid) references person(personid) on delete cascade
); 

insert into employees(employeeid,enddate,deptid,posid,salary,commission) values('Emp0001','2023-09-23',58,13,764350.00,0.00);
insert into employees(employeeid,enddate,deptid,posid,salary,commission) values('Emp0002','2024-01-23',51,11,70011.00,0.00);
insert into employees(employeeid,enddate,deptid,posid,salary,commission) values('Emp0003','2023-09-23',51,12,90012.00,0.00);
insert into employees(employeeid,enddate,deptid,posid,salary,commission) values('Emp0004','2024-01-23',56,10,88013.00,0.00);
insert into employees(employeeid,enddate,deptid,posid,salary,commission) values('Emp0005','2023-09-23',55,14,60014.00,0.00);
insert into employees(employeeid,enddate,deptid,posid,salary,commission) values('Emp0006','2024-01-23',56,27,90015.00,0.00);
insert into employees(employeeid,enddate,deptid,posid,salary,commission) values('Emp0007','2023-09-23',57,16,80016.00,876.00);
insert into employees(employeeid,enddate,deptid,posid,salary,commission) values('Emp0008','2024-01-23',58,17,60017.00,545.00);
insert into employees(employeeid,enddate,deptid,posid,salary,commission) values('Emp0009','2023-09-23',58,16,10018.00,567.00);
insert into employees(employeeid,enddate,deptid,posid,salary,commission) values('Emp00010','2024-01-23',59,17,20019.00,876.00);



/*The login of the employee*/ 
create table emplogin ( 
	 employeeid varchar(10) , 
	 pwd varchar(50) , 
	 secques varchar(100) not null, 
	 secans varchar(50) not null, 
	 foreign key (employeeid) references employees (employeeid) on delete cascade 
); 
insert into emplogin values('Emp0001','QWER23','AH676','AHG65');
insert into emplogin values('Emp0002','QWEY24','QWE341','AHG78');
insert into emplogin values('Emp0003','QWEY25','MM6393','AHG98');
insert into emplogin values('Emp0004','QWERT26','AH986','AHGY54');
insert into emplogin values('Emp0005','QWERT27','xg252','AHG65');
insert into emplogin values('Emp0006','QWERT43','AN826','AHG23');
insert into emplogin values('Emp0007','QWRT29','AHS76','AHG6');
insert into emplogin values('Emp0008','QWRT30','AH676','AHI89');
insert into emplogin values('Emp0009','QWT31','A676','AHGI87');
insert into emplogin values('Emp00010','QWE32','AH676','AHO98');
/*The details of the customers that are in the company */
create table customers ( 
	 customerid varchar(10), 
	 premiseid int not null, 
	 acctcode int , 
	 startdate datetime default   CURRENT_TIMESTAMP, 
	 enddate date default null,  
	 foreign key (premiseid) references premise (premiseid) on delete cascade, 
	 foreign key (acctcode) references accttype (acctcode) on delete cascade ,
	 foreign key(customerid) references person(personid) on delete cascade
); 
 
insert into customers(customerid,premiseid,acctcode,enddate) values('Cust0001',1,100,'2023-09-23');
insert into customers(customerid,premiseid,acctcode,enddate) values('Cust0002',2,101,'2024-08-23');
insert into customers(customerid,premiseid,acctcode,enddate) values('Cust0003',3,102,'2022-11-25');
insert into customers(customerid,premiseid,acctcode,enddate) values('Cust0004',4,103,'2024-08-09');
insert into customers(customerid,premiseid,acctcode,enddate) values('Cust0005',5,104,'2023-09-23');
insert into customers(customerid,premiseid,acctcode,enddate) values('Cust0006',6,105,'2024-08-23');
insert into customers(customerid,premiseid,acctcode,enddate) values('Cust0007',7,106,'2022-11-25');
insert into customers(customerid,premiseid,acctcode,enddate) values('Cust0008',8,107,'2024-08-09');
insert into customers(customerid,premiseid,acctcode,enddate) values('Cust0009',9,108,'2022-11-25');
insert into customers(customerid,premiseid,acctcode,enddate) values('Cust00010',10,109,'2024-08-09');
/*Login for the customers */
create table custlogin ( 
	 customerid varchar(10), 
	 pwd varchar(50) not null, 
	 secques varchar(100) not null, 
	 secans varchar(50) not null, 
	 foreign key (customerid) references customers (customerid) on delete cascade 
); 
insert into custlogin values('Cust0001','AS123','QWE234','YUTS24');
insert into custlogin values('Cust0002','AS124','QWQ567','YRR54');
insert into custlogin values('Cust0003','AS125','SER45','NJU78');
insert into custlogin values('Cust0004','AS126','GYT432','SGQ321');
insert into custlogin values('Cust0005','AS127','KJUY67','MJY202');
insert into custlogin values('Cust0006','AS128','KUY678','YYT27');
insert into custlogin values('Cust0007','AS129','MKJ897','YUTY56');
insert into custlogin values('Cust0008','AS130','XDE345','YUTS24');
insert into custlogin values('Cust0001','AS131','ZAQ231','YUTS24');
insert into custlogin values('Cust0002','AS132','OIU87','YUTS24');

/*the generated bills of the customers based on the month */
create table bills( 
	billnum int primary key auto_increment, 
	customerid varchar(10), 
	consumption int not null, 
	rateapplied int not null, 
	paiddate date not null,   
	amt  int(10) not null,
	paidmode varchar(100), 
	unique(customerid,billnum,paiddate), 
	foreign key (customerid) references customers (customerid) on delete cascade
); 

insert into bills(customerid,consumption,rateapplied,paiddate,amt,paidmode) values('Cust0001',40,3,'2015-03-04', 3412,'cash');
insert into bills(customerid,consumption,rateapplied,paiddate,amt,paidmode) values('Cust0002',76,10,'2015-03-09', 8796,'bank');
insert into bills(customerid,consumption,rateapplied,paiddate,amt,paidmode) values('Cust0003',12,7,'2015-04-11', 5438,'cash');
insert into bills(customerid,consumption,rateapplied,paiddate,amt,paidmode) values('Cust0004',32,12,'2015-04-24', 5734,'bank');
insert into bills(customerid,consumption,rateapplied,paiddate,amt,paidmode) values('Cust0005',40,3,'2015-09-10', 4378,'cash');
insert into bills(customerid,consumption,rateapplied,paiddate,amt,paidmode) values('Cust0006',7,6,'2015-09-14', 7684,'bank');
insert into bills(customerid,consumption,rateapplied,paiddate,amt,paidmode) values('Cust0007',12,7,'2015-10-16', 3786,'cash');
insert into bills(customerid,consumption,rateapplied,paiddate,amt,paidmode) values('Cust0008',32,12,'2015-10-09', 4536,'bank');
insert into bills(customerid,consumption,rateapplied,paiddate,amt,paidmode) values('Cust0009',12,7,'2016-02-18', 7658,'cash');
insert into bills(customerid,consumption,rateapplied,paiddate,amt,paidmode) values('Cust00010',32,12,'2016-02-11', 6754,'bank');
insert into bills(customerid,consumption,rateapplied,paiddate,amt,paidmode) values('Cust0001',88,9, '2016-06-09', 3543,'bank');
insert into bills(customerid,consumption,rateapplied,paiddate,amt,paidmode) values ('Cust0002',88,9,'2016-06-24', 7856,'bank');
insert into bills(customerid,consumption,rateapplied,paiddate,amt,paidmode) values('Cust0003',88,9, '2016-07-14', 3456,'bank');
insert into bills(customerid,consumption,rateapplied,paiddate,amt,paidmode) values('Cust0004',88,9, '2016-07-27', 5647,'bank');
insert into bills(customerid,consumption,rateapplied,paiddate,amt,paidmode) values('Cust0006',88,9,'2016-10-13', 4532,'bank');
insert into bills(customerid,consumption,rateapplied,paiddate,amt,paidmode) values('Cust0009',88,9, '2016-10-21', 6756,'bank');
insert into bills(customerid,consumption,rateapplied,paiddate,amt,paidmode) values('Cust0008',88,9, '2017-01-03', 4563,'bank');
insert into bills(customerid,consumption,rateapplied,paiddate,amt,paidmode) values('Cust0007',88,9, '2017-01-12', 4532,'bank');
insert into bills(customerid,consumption,rateapplied,paiddate,amt,paidmode) values( 'Cust0009',88,9,'2017-05-10', 5674,'bank');
insert into bills(customerid,consumption,rateapplied,paiddate,amt,paidmode) values( 'Cust00010',81,4,'2017-05-19', 5645,'bank');
insert into bills(customerid,consumption,rateapplied,paiddate,amt,paidmode) values( 'Cust0002',8,2,'2017-08-17', 4512,'bank');
insert into bills(customerid,consumption,rateapplied,paiddate,amt,paidmode) values( 'Cust0005',88,9,'2017-08-29', 5674,'bank');
insert into bills(customerid,consumption,rateapplied,paiddate,amt,paidmode) values( 'Cust0005',86,12,'2017-12-07', 4535,'bank');
insert into bills(customerid,consumption,rateapplied,paiddate,amt,paidmode) values( 'Cust0006',32,9,'2017-12-22', 5467,'bank');
insert into bills(customerid,consumption,rateapplied,paiddate,amt,paidmode) values( 'Cust0003',80,7,'2018-03-02', 4567,'bank');
insert into bills(customerid,consumption,rateapplied,paiddate,amt,paidmode) values( 'Cust0002',84,10,'2018-03-12', 4538,'bank');
/*The service requests that are raised by the customer */
create table services( 
	serviceid int auto_increment, 
	customerid varchar(10), 
	premiseid int not null, 
	createddate datetime default   CURRENT_TIMESTAMP,  
	resolveddate date default null, 
	contactnum numeric(10) not null, 
	assignedto varchar(10), 
	remarks varchar(100), 
	primary key (serviceid), 
	foreign key (customerid) references customers (customerid) on delete cascade, 
	foreign key (premiseid) references premise (premiseid) on delete cascade, 
	foreign key (assignedto) references employees (employeeid) on delete cascade
); 

Alter table services auto_increment=1000;
insert into services(customerid,premiseid,resolveddate,contactnum,assignedto,remarks) 
values('Cust0001',1,'2021-09-26',0547235780,'Emp0001','closed');
insert into services(customerid,premiseid,resolveddate,contactnum,assignedto,remarks) 
values('Cust0002',2,'2022-09-26',0547235780,'Emp0001','thanks so much and sorry for any inconveniences caused');
insert into services(customerid,premiseid,resolveddate,contactnum,assignedto,remarks) 
values('Cust0003',3,'2021-09-26',0547235780,'Emp0002','thanks so much and sorry for any inconveniences caused');
insert into services(customerid,premiseid,resolveddate,contactnum,assignedto,remarks) 
values('Cust0004',4,'2022-09-26',0547235780,'Emp0002','thanks so much and sorry for any inconveniences caused');
insert into services(customerid,premiseid,resolveddate,contactnum,assignedto,remarks) 
values('Cust0005',5,'2021-09-26',0547235780,'Emp0001','thanks so much and sorry for any inconveniences caused');
insert into services(customerid,premiseid,resolveddate,contactnum,assignedto,remarks) 
values('Cust0006',6,'2022-09-26',0547235780,'Emp00010','thanks so much and sorry for any inconveniences caused');
insert into services(customerid,premiseid,resolveddate,contactnum,assignedto,remarks) 
values('Cust0007',7,'2021-09-26',0547235780,'Emp0005','thanks so much and sorry for any inconveniences caused');
insert into services(customerid,premiseid,resolveddate,contactnum,assignedto,remarks) 
values('Cust0008',8,'2022-09-26',0547235780,'Emp0009','thanks so much and sorry for any inconveniences caused');
insert into services(customerid,premiseid,resolveddate,contactnum,assignedto,remarks) 
values('Cust0009',9,'2021-09-26',0547235780,'Emp0002','thanks so much and sorry for any inconveniences caused');
insert into services(customerid,premiseid,resolveddate,contactnum,assignedto,remarks) 
values('Cust00010',10,'2022-09-26',0547235780,'Emp0007','thanks so much and sorry for any inconveniences caused');

-- Six functionalities of the database--

-- Query 0ne--
--  Write a query in SQL to list the department where at least two employees are working --
 SELECT deptid,
       count(*)
FROM employees
GROUP BY deptid
HAVING count(*) >= 2;

  -- Shows the total and average amount of money from bills in a financial year-- 
SELECT 
CASE WHEN MONTH(paiddate)>=4 
THEN CONCAT(YEAR(paiddate), '-',YEAR(paiddate)+1)
ELSE concat(YEAR(paiddate)-1,'-',YEAR(paiddate)) 
END AS financial_year ,
COUNT(*) as Nos,SUM(amt) as total,AVG(amt) as average 
FROM bills GROUP BY financial_year;

-- a query in SQL to find the highest paid employees in the department Finance and Accounting. --
SELECT *
FROM employees
WHERE salary IN
    (SELECT max(salary)
     FROM employees
     WHERE deptid IN
         (SELECT d.deptid
          FROM department d
          WHERE d.deptname = 'Finance and Accounting'));
