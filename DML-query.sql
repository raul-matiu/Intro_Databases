rename table petowner to owners;
alter table owners change ownerLastName lastName varchar (25);
alter table owners add column dateOfBirth date;

-- Instructiunea de INSERT
insert into owners (firstName, lastName, dateOfBirth)
values ('Jim', 'Jameson', '1980-01-31');

-- Instructiunea de INSERT cu mai multe randuri inseraste concomitent
insert into owners (firstName, lastName, dateOfBirth)
values ('Andrew', 'Smith', '1957-05-20'), ('Tom', 'Thompson', '1956-07-28');

-- Instructiunea de INSERT fara specificarea coloanelor. Antentie!! Trebuie sa specificam OBLIGATORIU numarul exact de valori corespunzator numarului de coloane 
insert into owners values ('Tom', 'Anderson', '1980-01-30');
insert into owners values ('Tom', 'Anderson'); -- Va returna eroare: Error Code: 1136. Column count doesn't match value count at row 1

-- Verificam rezultatele instructiunii de INSERT
select * from owners;

-- --------------------------

update owners set firstName = 'James';

-- Verificam rezultatele instructiunii de UPDATE
select * from owners;

-- ----------------------
-- Stergerea tuturor inregistrarilor din tabela
delete from owners;

-- Verificam rezultatele instructiunii de DELETE
select * from owners; 

-- ---------------------
-- Stergerea tuturor inregistrarilor din tabela cu TRUNCATE

truncate table owners;

-- Verificam rezultatele instructiunii de TRUNCATE
select * from owners; 

-- Diferente intre DELETE si TRUNCATE
/* 
- DELETE are capacitatea de a numara inregistrarile pe care le sterge, iar TRUNCATE sterge fara a numara
- cu DELETE putem sa filtram si sa stergem doar anumite inregistrari, in schimb cu TRUNCATE nu putem face filtrare
*/
