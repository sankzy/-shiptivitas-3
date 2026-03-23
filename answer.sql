-- TYPE YOUR SQL QUERY BELOW

-- PART 1: Create a SQL query that maps out the daily average users before and after the feature change

-- 1. Daily Active Users (DAU)
-- Counts how many unique users logged in each day
SELECT 
    date(login_timestamp, 'unixepoch') AS day, 
    COUNT(DISTINCT user_id) AS active_users
FROM login_history
GROUP BY day
ORDER BY day;

-- PART 2: Create a SQL query that indicates the number of status changes by card

-- 2. Number of Status Changes by Day
-- Shows how much the Kanban board is being used
SELECT 
    date(timestamp, 'unixepoch') AS day, 
    COUNT(*) AS total_status_changes
FROM card_change_history
GROUP BY day
ORDER BY day;






