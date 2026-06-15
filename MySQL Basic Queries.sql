USE world;

select count(*) as CitiesinUSA
from city
where Countrycode = 'USA';

select name, lifeexpectancy
from country
order by lifeexpectancy desc
limit 1;

select name
from city
where name like '%new%';

select name, population
from city
order by population desc
limit 10;

select name, population
from city
where population > 2000000;

select name
from city
where name like 'be%';

select name, population
from city
where population between 500000 and 1000000;

select name
from city 
order by name asc;

select name
from city
order by population desc
limit 1;

 select city.name, count(*) as cityfrequency
 from city
 group by city.name
 order by city.name asc;
 
 select name, population
 from city
 order by population asc
 limit 1;

select name, population
from country
order by population desc
limit 1;

select country.name, city.name
from country as co
join city as ci
on c.capital = city.id
where country.name = 'Spain';

select country.name, city.name
from country
join city
on country.code = city.countrycode
where country.continent = 'europe';

select name, avg(population) as AveragePopulation
from country
group by code;

select country.name as country, city.name as capitalCity, city.population
from country
join city
on country.capital = city.id
order by city.population desc;

select name, (population / surfacearea) as PopulationDensity
from country
where (population / surfacearea) < 50
order by PopulationDensity asc;

select name, population
from city
order by population desc
limit 10 offset 30;
