--Practise
--Create table
create table demo_1(
id number(20) primary key,
vname varchar(20) unique not null,
vqty number,
vprice number not null
);
select * from demo_1;
desc demo_1;
insert into demo_1 values(1,'cauliflower',10,50);
insert into demo_1(id,vname,vprice) values(2,'bhindi',40);
insert into demo_1 values(3,'paneer',10,90);

create table fruits(id number primary key,fname varchar(20) unique not null,fqty number , fprice number not null);
desc fruits;
drop table fruits;
select * from fruits;


insert into fruits(id,fname,fqty,fprice) values(1,'apple',20,100);
insert into fruits(id,fname,fqty,fprice) values(2,'banana',25,50);
insert into fruits(id,fname,fqty,fprice) values(3,'pineapple',10,40);
insert into fruits(id,fname,fqty,fprice) values(4,'dragonfruit',10,40);

select * from fruits;

create table owner_veg_fruit(fid number,vid number,owner varchar(20),
constraint pk_own primary key(fid,vid),
constraint fk_own1 foreign key(fid) references fruits(id),
constraint fk_own2 foreign key(vid) references demo_1(id)
)
drop table owner_veg_fruit;
desc owner_veg_fruit;

insert into owner_veg_fruit values(1,1,'praveer');
insert into owner_veg_fruit values(1,2,'praveer');
insert into owner_veg_fruit values(1,3,'praveer');
insert into owner_veg_fruit values(2,2,'praveer');
insert into owner_veg_fruit values(2,3,'tejveer');

select * from owner_veg_fruit;

delete from owner_veg_fruit where fid=2 and vid=3;

--update 
select * from fruits;
update fruits set fprice=fprice+10;
update fruits set fprice=fprice-10,fqty=30 where fname='apple';

--alter table
select * from fruits;
alter table fruits add(profit number);
delete from fruits;
delete from owner_veg_fruit;
alter table fruits add(constraint ck1 unique(PROFIT));
alter table fruits drop column profit;
alter table fruits rename column fruit_name to fname;
desc fruits;



