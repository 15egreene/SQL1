--Question 1

select last_name
from actor 
where last_name = 'Wahlberg';
-- There are two actors with the last name Wahlberg


--Question 2
select count(amount)
from payment
where amount > 3.99 and amount < 5.99;

-- 3,412 payments were made between 3.99 and 5.99

--Question 3
select film_id, sum(film_id)
from inventory 
group by film_id 
order by sum(film_id) desc ;

-- film_id 1,000 aka 'Zorro Ark' 


--Question 4
select last_name
from customers
where last_name= 'William';

-- After searching, I was unable to find a customer with the last name 'William'


--Question 5
select staff_id, sum(rental_id)
from rental 
group by staff_id 
order by sum(rental_id) desc;
-- staff Member Mike had the most sales with a total of 64, 772, 289


--Question 6
select count(district)
from address;
-- There are 603 different district names

--Question 7
select film_id , count(actor_id) 
from film_actor
group by film_id  
order by count(actor_id)desc;

-- Film_ID 508 aka Lambs Cincinatti has the most actors(16) in it 


--Question 8
select count(last_name) 
from customer 
where last_name like '___es';

--There are 10 names that potentially end with 'es'


--Question 9
select customer_id, count(amount) 
from payment
group by customer_id 
having customer_id > 380 or customer_id < 430 

--this is probably the wrong answer, but i was thinking maybe there was another table 
--that i needed to join to this query. 


--Question 10
select rating , count(rating)
from film 
group by rating 
order by count(rating) desc 

--there are 5 categories of movies. Pg-13 movies have the highest total.

