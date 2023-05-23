select * from petowner;
select * from pets;
select * from petowner cross join pets;
select * from petowner inner join pets on petowner.ownerid = pets.ownerid;
select * from petowner left join pets on petowner.ownerid = pets.ownerid;
select * from petowner left join pets on petowner.ownerid = pets.ownerid where pets.ownerid is null;
select * from petowner left join pets on petowner.ownerid = pets.ownerid where pets.ownerid is not null; -- Rezultatele sunt identintice cu INNER JOIN
select * from petowner right join pets on petowner.ownerid = pets.ownerid; -- Rezultatul este identic cu 'select * from pets left join petowner on petowner.ownerid = pets.ownerid;

select * from petowner right join pets on petowner.ownerid = pets.ownerid where pets.ownerid is null;
select * from petowner right join pets on petowner.ownerid = pets.ownerid where pets.ownerid is not null;

-- Instructiuni echivalente
select * from petowner right join pets on petowner.ownerid = pets.ownerid;
select * from pets left join petowner on pets.ownerid = petowner.ownerid;

select * from petowner right join pets on petowner.ownerid = pets.ownerid where petowner.ownerid is null;
select * from petowner right join pets on petowner.ownerid = pets.ownerid where petowner.ownerid is not null;

-- Cross join -  se vor aduce toate inregistrarile din tabela din dreapta si cea din stanga
-- Inner join - se vor aduce toate datele care exista in ambele tabele, comparatia facandu-se pe coloana pe care se face conditia de join
-- Left join - se aduc toate inregistrarile din tabela din stanga si se compara cu cele din dreapta.
		-- Astfel se vor aduce toate randurile din tabela din stanga, iar pe coloanele aferente tabelei din dreapta se va completa doar pentru randurile care au echivalent
        -- (adica cele a carar cheie primara exista in tabela din dreapta)
-- Right join - se aduc toate inregistrarile din tabela din dreapta si se compara cu cele din stanga.
		-- Astfel se vor aduce toate randurile din tabela din dreapta, iar pe coloanele aferente tabelei din stanga se va completa doar pentru randurile care au echivalent
        -- (adica cele a carar cheie primara exista in tabela din stanga)
        
select * from petowner;
select * from pets;
insert into pets (race, dateOfBirth, ownerid)
values ('european', '2020-02-15', 2);
insert into pets (race, dateOfBirth, ownerid)
values ('dog german', '2015-07-05', 5);
insert into pets (race, dateOfBirth, ownerid)
values ('pisica norvegiana', '2016-06-03', 5);
insert into pets (race, dateOfBirth, ownerid)
values ('ciobanesc mioritic', '2017-06-25', 5);

select * from petowner order by dateOfBirth; -- sortarea se va face by default ascendent
select * from petowner order by dateOfBirth desc; -- desc = descending
select * from petowner order by age desc limit 1;
select max(age) from petowner;

select o.ownerid, firstName, lastname, count(petid)
from petowner o inner join pets p on o.ownerid = p.ownerid
group by o.ownerid, firstName, lastname;

-- In mod normal filtrarea se face cu clauza WHERE, singura exceptie fiind functiile agregate care se pot filtra doar cu clauza HAVING
select o.ownerid, firstName, lastname, count(petid)
from petowner o inner join pets p on o.ownerid = p.ownerid
group by o.ownerid, firstName, lastname
having count(petid) >1;

select o.ownerid, firstName, lastname, race, o.dateOfBirth ownerBirthDate, p.dateOfBirth petBirthDate
from petowner o inner join pets p on o.ownerid = p.ownerid;