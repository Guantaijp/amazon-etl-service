select * from bestsellers 

--List the top 5 highest revenue products by country.
select product_title,revenue_estimate,country
from bestsellers 
order by revenue_estimate desc
limit 5

--Compute the average product price per category.
select category, avg(product_price) as avarage_price
from bestsellers
group by category

--Count the number of products in each rating bucket.
select rating_bucket, count(*) as product_count
from bestsellers
group by rating_bucket;

--Identify the top 5 products with the highest review density.
select product_title, review_density
from bestsellers
order by review_density desc
limit 5

-- Average star rating per brand
select brand, avg(product_star_rating) as avg_rating
from bestsellers b 
group by brand

--Compute the total revenue estimate by country region.
select country_region , sum(revenue_estimate) as total_revenue
from bestsellers
group by country_region

--List the top 5 most expensive products across all markets.
select product_title, product_price
from bestsellers
order by product_price desc
limit 5




