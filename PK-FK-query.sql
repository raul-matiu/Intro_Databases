alter table owners add column ownerid int primary key auto_increment;
alter table owners modify column ownerid int auto_increment first;
desc owners; -- prescurtarea de la describe

select * from owners;
insert into owners (firstName, lastName, dateOfBirth, age) values ('Anton', 'Pann', '1823-04-17',95); 
insert into owners (firstName, lastName, dateOfBirth, age) values ('Anton', 'Pann', '1823-04-17',95);

create table pets (
petid int not null auto_increment,
rate varchar (45) not null,
dateOfBirth date not null,
ownerid int not null,primary key (petid),
constraint fk_pets_owners foreign key (ownerid) references owners (ownerid)
);

alter table pets change rate race varchar (45) not null;

select * from owners;
select * from pets;
insert into pets (race, dateOfBirth, ownerid)
values ('european', '2020-02-15', 6);
delete from pets where ownerid = 6;
delete from owners where ownerid = 6;  -- Executat singura, fara comanda de DELETE din PETS, aceasta da eroare: Error Code: 1451. Cannot delete or update a parent row: a foreign key constraint fails (`petclinic`.`pets`, CONSTRAINT `fk_pets_owners` FOREIGN KEY (`ownerid`) REFERENCES `owners` (`ownerid`))


