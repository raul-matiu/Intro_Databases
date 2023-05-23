select * from owners;

insert into owners (firstName, lastName, dateOfBirth, age)
values ('Anton', 'Popescu','1973-06-25',47), ('Marin', 'Antonescu','1967-01-21',54);
insert into owners (firstName, lastName, dateOfBirth, age)
values ('Wiston', 'Churchil','1898-06-06',112);

alter table owners add column city varchar (50);
update owners set age = 63 where firstName = 'Andrew';
update owners set age = 64 where firstName = 'Tom';
update owners set city = 'Londra' where firstName = 'Andrew';
update owners set city = 'Manchester' where firstName = 'Tom';
update owners set dateOfBirth = '1898-05-06' where firstName = 'Wiston';

select * from owners where dateOfBirth > '1970-01-30';
select * from owners where age >= 47;

select * from owners where firstName in ('Ion', 'Marin');
select * from owners where firstName not in ('Ion', 'Marin');
select * from owners where city is null;
select * from owners where city is not null;

select * from owners where age != 47;
select * from owners where firstName != 'Marin';
select * from owners where firstName <> 'Marin'; -- Semenele '<>' folosite concomitent au aceeasi semnificatie de excludere ca si '!='

select * from owners where age between 50 and 65;

select * from owners;

select * from owners where firstName like 'A%';
select * from owners where firstName like '%on';
select * from owners where firstName like '%r%';

select * from owners where dateOfBirth like '1973%';
select * from owners where dateOfBirth like '195%';
select * from owners where dateOfBirth like '19%';
select * from owners where dateOfBirth like '%25';
select * from owners where dateOfBirth like '%01%';
select * from owners where dateOfBirth like '%06%';
select * from owners where dateOfBirth like '%-06-%';

select * from owners
where firstName like '%on'
and dateOfBirth like '197%';

select * from owners
where (firstName like '%on'
OR dateOfBirth like '197%')
and city = 'Cluj Napoca';

select * from owners
where firstName like '%on'
OR dateOfBirth like '197%'
and city = 'Cluj Napoca';

select sum(age) from owners;
select avg(age) from owners;
select min(age) from owners;
select max(age) from owners;
select count(*) from owners;
select count(city) from owners;