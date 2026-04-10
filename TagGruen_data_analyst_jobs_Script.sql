select * 
from public.data_analyst_jobs;

--Q1
select count(*) 
from public.data_analyst_jobs;

--Q2
select * 
from public.data_analyst_jobs 
limit 10;
--10th job posting is for ExxonMobil

--Q3
select count(*) 
from public.data_analyst_jobs 
where location = 'TN';
--21 Jobs in TN
select count(*)
from public.data_analyst_jobs
where location in  ('TN', 'KY');
--27 Jobs in TN or KY

--Q4
select count(*) 
from public.data_analyst_jobs
where location = 'TN' and star_rating >4;
--3 Jobs in TN with a star rating greater than 4

--Q5
Select Count(*)
from public.data_analyst_jobs
where review_count between 500 AND 1000;
-- There are 151 job postings with ratings between 500 and 1000.

--Q6
select location as "state", avg(star_rating) as "rating"
from public.data_analyst_jobs
group by location
order by "rating" desc;
--Nebraska has the highest star rating with a rating of 4.19

--Q7
select distinct title
from public.data_analyst_jobs;
select count(distinct title)
from public.data_analyst_jobs;
--there are 881 unique job titles

--Q8
select count(distinct title)
from public.data_analyst_jobs
where location = 'CA';
--There are 230 unique job titles in CA

--Q9
select company, avg(star_rating) as "rating"
from public.data_analyst_jobs
where review_count > 5000
group by company
order by "rating" desc;
--There are 41 company with more than 5000 reviews. 
--Q10
--General Motors has the highest rating

--Q11
select distinct title
from public.data_analyst_jobs
where title ilike '%analyst%';
select count(distinct title)
from public.data_analyst_jobs
where title ilike '%analyst%';
--There are 774 jobs that contain "Analyst" within the title

--Q12
select title
from public.data_analyst_jobs
where title not ilike '%analyst%' and title not ilike '%analytics%';
--There are only 4 jobs not including 'analyst' or 'analytics' and they are focused on Tableau

--BONUS
select distinct domain, count(*)
from public.data_analyst_jobs
where skill ilike '%sql%' and domain is not null and days_since_posting > 21
group by domain
order by count(*) desc;
--Internet and Software has the most jobs that are "hard to fill"
