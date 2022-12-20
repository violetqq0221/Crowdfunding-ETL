--1. Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 
select backers_count,
       cf_id 
from crowdfunding
WHERE crowdfunding.outcome = ('live')
order by backers_count desc;

-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.
select count(*) from backers where cf_id=65;

-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 

SELECT * FROM crowdfunding;
SELECT ba.first_name, ba.last_name, ba.email,
       (cfd.goal-cfd.pledged) as Remaining_Goal_Amount 
INTO email_contacts_remaining_goal_amount
from crowdfunding as cfd
LEFT JOIN backers as ba
ON cfd.cf_id=ba.cf_id
where cfd.outcome='live'
ORDER BY Remaining_Goal_Amount desc;
  
-- Check the table
SELECT* from email_contacts_remaining_goal_amount;

-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 
-- Check the table
SELECT * FROM crowdfunding;
SELECT ba.email, ba.first_name, ba.last_name, cfd.cf_id, cfd.company_name, cfd.deadline as "end_date",
       (cfd.goal-cfd.pledged) as "Left of Goal" 
INTO email_backers_remaining_goal_amount
from crowdfunding as cfd
LEFT JOIN backers as ba
ON cfd.cf_id=ba.cf_id
where cfd.outcome='live'
ORDER BY ba.last_name;





