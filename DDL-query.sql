CREATE TABLE owners (
    firstName VARCHAR(25) NOT NULL,
    lastName VARCHAR(25) NOT NULL
);

alter table owners
add column age int;

alter table owners drop age;
alter table owners drop column age;

desc owners;

alter table owners modify firstName char(25) not null;
alter table owners modify lastName char(25) not null;

/* Instructiunea de CHANGE ne ajuta sa schimbam numele unei coloane */
alter table owners change lastName ownerLastName char(25) not null;


/* Instructiunea de RENAME ne ajuta sa schimbam numele tabelei */

alter table owners rename to petOwner;

/* Instructiunea de DROP TABLE sterge tabela impreuna cu toate informatiile din ea */
drop table petOwner; -- ANTENTIE!!! se va syterge tabela cu toate informatiile din ea si nu se mai poate recupera. --