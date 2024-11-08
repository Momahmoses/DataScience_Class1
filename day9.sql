create database allwellAcademic; # staff table, student registration number
# column name, column data type and a constraint
use allwellacademic;
create table stafftable(staffid int primary key not null, staffname varchar(255) not null,staffgender varchar(10) not null);
#ALTER
# create new column
# create a column to be the last column on the table
alter table stafftable add column stafDOB date not null;
show columns stafftable from stafftable;
# create a column after another column
alter table stafftable add column staffcontact varchar(100) not null after staffgender;
# create a column to be the first one the table
alter table stafftable add column id int null first;
show columns from stafftable
# dropping a column on a table
alter table stafftable drop column id;
show columns from stafftable;
#modifying Datatype and constraint
alter table stafftable modify staffname text;
show columns from stafftable;
# changing column name 
alter table stafftable change column staffcontact staffPhoneNumber varchar(100) not null;
show columns from stafftable;
# rename table name itself 
alter table stafftable rename to STAFFDETAILS;
show tables;


# INSERT, UPDATE, SELECT AND DELETE
select * from staffdetails;
#select is uded to retrieve data from the table. * means all in sql
select staffname, staffgender from staffdetails;
# insert is used to bring in data into the table
insert into staffdetails (staffid,staffname,staffgender,staffPhoneNumber,stafDOB) values
(1,'John Adejoh','male','0908765432','1992-04-30'),
(2,'Jude Amos','male','07045354332','1967-07-12'),
(3,'Uche Ada','female','08176646732','1987-09-07'),
(4,'Magu Aminu','male','07098754432','1978-02-14'),
(5,'AMaka Fills','female','0806672432','1968-06-06'),
(6,'Yunus Lawal','male','07046465432','1988-03-13'),
(7,'Bola Tulumbu','male','07055644432','1900-05-16');

select * from  staffdetails;

# UPDATE IS USED TO ADJUST ANY OF THE Record
update staffdetails set stafdob = '1990-07-18' where staffid =2;
select * from staffdetails;

update staffdetails set staffgender = 'female' where staffid = 4;
select * from staffdetails;

# DELETING A RECORD
#DELETE IS USED TO REMOVE ANY OF THE RECORDS
delete from staffdetails where staffid = 7;
select * from staffdetails;