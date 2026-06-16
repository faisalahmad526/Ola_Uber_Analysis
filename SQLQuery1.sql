


select * from [dbo].[Bookings-100000-Rows - July]


-- 1. Retrieve all successful bookings:

-- create a view 
create view Successful_Booking AS
select * from [Bookings-100000-Rows - July]
where Booking_Status = 'Success';

select * from Successful_Booking -- ANS


-- check all booking status 
select booking_status, count(*) from [Bookings-100000-Rows - July]
group by Booking_Status

-- 2. Find the average ride distance for each vehicle type:
CREATE VIEW ride_distance_for_each_vehicle AS
select Vehicle_Type, AVG(Ride_Distance) 
AS Avg_Distance from [Bookings-100000-Rows - July]
group by Vehicle_Type

select * from ride_distance_for_each_vehicle -- ANS

-- 3. Get the total number of cancelled rides by customers:

CREATE VIEW Canceled_Rides_by_Customer AS
SELECT COUNT(*) AS Total_Cancelled_Rides
FROM [Bookings-100000-Rows - July]
WHERE Booking_Status = 'Canceled by customer';

-- ANSWER
SELECT * FROM Canceled_Rides_by_Customer;

-- 4. List the top 5 customers who booked the highest number of rides:
CREATE VIEW top_5_customers AS
select TOP 5 Customer_ID, COUNT(Booking_ID) As total_rides
from [Bookings-100000-Rows - July]
group by Customer_ID
order by total_rides DESC;

select * from top_5_customers
-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
CREATE VIEW Rides_canceled_by_drivers_P_C_Issues AS
SELECT COUNT(*) AS Total_Canceled_Rides_By_Drivers
FROM [Bookings-100000-Rows - July]
WHERE canceled_Rides_by_Driver = 'Personal & Car related issue';

SELECT * FROM Rides_canceled_by_drivers_P_C_Issues;

-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
CREATE VIEW Max_Min_Driver_Rating AS
SELECT MAX(Driver_Ratings) AS max_rating, 
MIN(Driver_Ratings) AS min_rating 
from [Bookings-100000-Rows - July]
where Vehicle_Type = 'Prime Sedan';

select * from Max_Min_Driver_Rating

-- 7. Retrieve all rides where payment was made using UPI:
CREATE VIEW UPI_Payment as
select * from [Bookings-100000-Rows - July]
where Payment_Method = 'UPI'

select * from UPI_Payment

-- 8. Find the average customer rating per vehicle type:
CREATE VIEW Avg_Cust_Rating as 
 SELECT Vehicle_Type, 
 AVG(Customer_Rating) as avg_customer_rating 
 FROM [Bookings-100000-Rows - July]
 GROUP BY Vehicle_Type

select * from Avg_Cust_Rating


-- 9. Calculate the total booking value of rides completed successfully:
create view total_successful_ride_value as
 SELECT SUM(Booking_Value) as total_successful_value 
 FROM [Bookings-100000-Rows - July]
 WHERE Booking_Status = 'Success';

 select * from total_successful_ride_value

-- 10. List all incomplete rides along with the reason:
create view Incomplete_Rides_Reason AS
SELECT Booking_ID, Incomplete_Rides_Reason 
FROM [Bookings-100000-Rows - July]
WHERE Incomplete_Rides = 1;

select * from Incomplete_Rides_Reason
