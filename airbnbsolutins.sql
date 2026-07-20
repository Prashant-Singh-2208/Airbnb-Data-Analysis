select * from ny_listings
select * from bangkok_listings

--1. How many listings does each city have?
select 'New York' as city ,count(*) from ny_listings 
union all
select 'Bangkok' as city ,count(*) from bangkok_listings

--2. What is the average price per city?
select 'New York' as city ,avg(price) from ny_listings 
union all
select 'Bangkok' as city ,avg(price) from bangkok_listings

--3. Which neighbourhood has the most listings?
select neighbourhood_group,count(neighbourhood_group) as c from ny_listings group by neighbourhood_group order by c desc
select neighbourhood,count(neighbourhood) as c from bangkok_listings group by neighbourhood order by c desc limit 10

--4. What is the price distribution by room type?
select room_type,avg(price) as average from ny_listings group by room_type order by average desc
select room_type,avg(price) as average from bangkok_listings group by room_type order by average desc

--5. Which top 10 neighbourhoods are most expensive on average?
select neighbourhood_group,round(avg(price::numeric),2) as average from ny_listings GROUP BY neighbourhood_group
ORDER BY average DESC LIMIT 10;

--6. How does price vary by number of reviews?
select distinct reviews_per_month as review from ny_listings
select 
	case 
	when reviews_per_month=0 then 'No Review'
	when reviews_per_month between 1.0 and 10.0 then 'Low'
	when reviews_per_month between 11.0 and 20.0 then 'Medium'
	when reviews_per_month > 20.0 then 'High'
	else 'No reviews'
	end as review,
avg(price) as average_pricing from ny_listings
where price is not null
group by review order by average_pricing desc

select 
	case 
	when reviews_per_month=0 then 'No Review'
	when reviews_per_month between 1.0 and 10.0 then 'Low'
	when reviews_per_month between 11.0 and 20.0 then 'Medium'
	when reviews_per_month > 20.0 then 'High'
	else 'No reviews'
	end as review,
avg(price) as average_pricing from bangkok_listings
where price is not null
group by review order by average_pricing desc

--7. Which room types are most available throughout the year?
select  room_type,avg(availability_365) as availability,count(*) as available from ny_listings GROUP BY room_type order by availability desc
select  room_type,avg(availability_365) as availability,count(*) as available from bangkok_listings GROUP BY room_type order by availability desc

--8. What % of listings are available for more than 180 days?
select room_type,sum(case when  availability_365 > 180 then 1 else 0 end),count(*),round(sum(case when  availability_365 > 180
then 1 else 0 end)*100.0/count(*),2) as available_percentage from ny_listings GROUP BY room_type  order by available_percentage desc 

select room_type,sum(case when  availability_365 > 180 then 1 else 0 end),count(*),round(sum(case when  availability_365 > 180
then 1 else 0 end)*100.0/count(*),2) as available_percentage from bangkok_listings GROUP BY room_type  order by available_percentage desc 

--9. Who are the top 10 hosts by number of listings?
 select  host_name ,count(*) as c from ny_listings group by host_name having host_name is not null order by c desc limit 10
 select  host_name ,count(*) as c from bangkok_listings group by host_name having host_name is not null order by c desc limit 10

--10. which hosts have the highest average price per listing?
 select  host_name ,round(avg(price::numeric),2) as average_pricing from ny_listings where host_name is not null and price is not null
 group by host_name  order by average_pricing desc limit 10

select  host_name ,round(avg(price::numeric),2) as average_pricing from bangkok_listings where host_name is not null and price is not null
 group by host_name  order by average_pricing desc limit 10

 --11. Which city has better average ratings?
select 'New York' as city ,avg(reviews_per_month) as reviews from ny_listings 
union all
select 'Bangkok' as city ,avg(reviews_per_month) as reviews from bangkok_listings

--12. Which neighbourhoods have the most reviews (proxy for demand)?
select 'New York' as city ,neighbourhood , sum(number_of_reviews) as maximum 
from ny_listings group by neighbourhood order by maximum desc limit 10

select 'Bangkok' as city ,neighbourhood , sum(number_of_reviews) as maximum 
from bangkok_listings group by neighbourhood order by maximum desc limit 10