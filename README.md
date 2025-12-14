# OLA Data Analyst Project: (SQL and Power BI Based Ride Analysis)
# Project objective
To analyze Ola ride booking data using SQL and Power BI in order to:
Understand booking status patterns, ride volumes, cancellations, ratings, and revenue across different vehicle types, locations, and payment methods.
Build interactive dashboards that help track operational performance, customer experience, and key revenue drivers for data‑driven decision making in a ride‑hailing business.

## Dataset Used
-<a href="https://github.com/NaveenML-2000/Data-Analysis-Dashboard/blob/main/Bookings(July).csv">Dataset</a>

## Power BI Questions:
1. Ride Volume Over Time 
2. Booking Status Breakdown 
3. Top 5 Vehicle Types by Ride Distance 
4. Average Customer Ratings by Vehicle Type 
5. cancelled Rides Reasons 
6. Revenue by Payment Method 
7. Top 5 Customers by Total Booking Value 
8. Ride Distance Distribution Per Day 
9. Driver Ratings Distribution 
10. Customer vs. Driver Ratings 

- Dashboard Overall <a "https://github.com/NaveenML-2000/Data-Analysis-Dashboard/blob/main/Over%20all.png">View Dashboard</a>
- Dashboard Vehicle Type <a "https://github.com/NaveenML-2000/Data-Analysis-Dashboard/blob/main/Vehicle%20Type.png">View Dashboard</a>
- Dashboard Revenue <a "https://github.com/NaveenML-2000/Data-Analysis-Dashboard/blob/main/Revenue.png">View Dashboard</a>
- Dashboard Cancellation <a "https://github.com/NaveenML-2000/Data-Analysis-Dashboard/blob/main/Cancellation.png">View Dashboard</a>
- Dashboard Ratings <a "https://github.com/NaveenML-2000/Data-Analysis-Dashboard/blob/main/Ratings.png">View Dashboard</a>
## Power BI Answers: 
OLA Data Analyst Project Segregation of the views: 
1. Overall-
- Ride Volume Over Time Booking Status Breakdown 
2. Vehicle Type 
-Top 5 Vehicle Types by Ride Distance 
3. Revenue—
- Revenue by Payment Method 
- Top 5 Customers by Total Booking Value 
- Ride Distance Distribution Per Day 
4. Cancellation-
- Cancelled Rides Reasons (Customer) 
- cancelled Rides Reasons(Drivers) 
5. Ratings-
- Driver Ratings Customer Rating


## Data Columns form the set:
1. Date 
2. Time 
3. Booking_ID 
4. Booking_Status 
5. Customer_ID 
6. Vehicle_Type 
7. Pickup_Location 
8. Drop_Location 
9. V_TAT 
10. C_TAT 
11. cancelled_Rides_by_Customer 
12. cancelled_Rides_by_Driver 
13. Incomplete_Rides 
14. Incomplete_Rides_Reason 
15. Booking_Value 
16. Payment_Method 
17. Ride_Distance 
18. Driver_Ratings 
19. Customer_Rating

# SQL Questions:
1. Retrieve all successful bookings: 
2. Find the average ride distance for each vehicle type: 
3. Get the total number of cancelled rides by customers: 
4. List the top 5 customers who booked the highest number of rides: 
5. Get the number of rides cancelled by drivers due to personal and car-related issues:
6. Find the maximum and minimum driver ratings for Prime Sedan bookings: 
7. Retrieve all rides where payment was made using UPI: 
8. Find the average customer rating per vehicle type:
9. Calculate the total booking value of rides completed successfully: 
10. List all incomplete rides along with the reason:
## SQL Answers: 
1.Retrieve all successful bookings: 
SELECT * FROM bookings 
WHERE Booking_Status = 'Success'; 
2. Find the average ride distance for each vehicle type: 
SELECT Vehicle_Type, AVG(Ride_Distance) 
as  avg_distance FROM bookings 
GROUP BY Vehicle_Type; 
3. Get the total number of cancelled rides by customers: 
SELECT COUNT(*) FROM bookings
WHERE Booking_Status = 'Canceled by Customer';
4. List the top 5 customers who booked the highest number of rides: 
SELECT Customer_ID, COUNT(Booking_ID) as total_rides
FROM bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC LIMIT 5;
5. Get the number of rides cancelled by drivers due to personal and car-related issues: 
select count(*) from bookings
Where Canceled_Rides_by_Driver = 'Personal & Car related issue';
6. Find the maximum and minimum driver ratings for Prime Sedan bookings: 
select MAX(Driver_Ratings) as max_rating,
MIN(Driver_Ratings) as min_rating
from bookings where Vehicle_Type = 'Prime Sedan';
7. Retrieve all rides where payment was made using UPI:
select * from bookings
where Payment_Method = 'UPI'; 
8. Find the average customer rating per vehicle type: 
Select Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating
from bookings
group by Vehicle_Type;
9. Calculate the total booking value of rides completed successfully: 
select sum(Booking_Value) as total_successful_ride_value
from bookings
where Booking_Status = 'Success';
10. List all incomplete rides along with the reason: 
select Booking_ID, Incomplete_Rides_Reason 
from bookings 
where Incomplete_Rides = 'Yes';

