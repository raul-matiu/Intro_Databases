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
