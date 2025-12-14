create database ola;
use ola;

#1. Retrive all successful bookings:
create view Successful_Bookings As 
select * from bookings
where Booking_Status = 'Success';
#1. Retrive all successful bookings:
select * from Successful_Bookings;

#2.Find the average distance ride distance for each vechicle type:
create view average_distance_ride_distance_for_each_vechicle As 
SELECT Vehicle_Type, AVG(Ride_Distance)
as avg_distance FROM bookings
GROUP BY Vehicle_Type;
#2.Find the average distance ride distance for each vechicle type:
select * from average_distance_ride_distance_for_each_vechicle;

#3.Get the total number of canceled rides by customers:
Create View canceled_rides_by_customers As
SELECT COUNT(*) FROM bookings
WHERE Booking_Status = 'Canceled by Customer';
#3.Get the total number of canceled rides by customers:
select * from canceled_rides_by_customers;

#4.List the top 5 customers who booked the highest number of rides;
Create View top_5_customers_who_booked_the_highest_number_of_rides As
SELECT Customer_ID, COUNT(Booking_ID) as total_rides
FROM bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC LIMIT 5;
#4.List the top 5 customers who booked the highest number of rides;
select * from top_5_customers_who_booked_the_highest_number_of_rides;

#5.Get the number of rides cancelled by drivers due to personal and car-related issues:
Create View number_of_rides_cancelled_by_drivers_due_to_personal_C_issues As
select count(*) from bookings
Where Canceled_Rides_by_Driver = 'Personal & Car related issue';
#5.Get the number of rides cancelled by drivers due to personal and car-related issues:
select * from number_of_rides_cancelled_by_drivers_due_to_personal_C_issues;

#6.Find the maximum and minimum driver ratings for Prime Sedan bookings:
Create View maximum_and_minimum_driver_ratings_for_Prime_Sedan_bookings as
select MAX(Driver_Ratings) as max_rating,
MIN(Driver_Ratings) as min_rating
from bookings where Vehicle_Type = 'Prime Sedan';
#6.Find the maximum and minimum driver ratings for Prime Sedan bookings:
select * from maximum_and_minimum_driver_ratings_for_Prime_Sedan_bookings;

#7.Retrive all rides where payment was made using UPI:
Create View rides_where_payment_was_made_using_UPI as
select * from bookings
where Payment_Method = 'UPI';
#7.Retrive all rides where payment was made using UPI:
select * from rides_where_payment_was_made_using_UPI;

#8.Find the average customer rating per vehicle type:
create view verage_customer_rating_per_vehicle_type as
Select Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating
from bookings
group by Vehicle_Type;
#8.Find the average customer rating per vehicle type:
select * from verage_customer_rating_per_vehicle_type;

#9.Calculate the total booking value of rides completed successfully:
create view total_booking_value_of_rides_completed_successfully as
select sum(Booking_Value) as total_successful_ride_value
from bookings
where Booking_Status = 'Success';
#9.Calculate the total booking value of rides completed successfully:
select * from total_booking_value_of_rides_completed_successfully;

#10.List all incomplete rides along with the reason:
create view incomplete_rides_along_with_the_reason as
select Booking_ID, Incomplete_Rides_Reason 
from bookings 
where Incomplete_Rides = 'Yes';
#10.List all incomplete rides along with the reason:
select * From incomplete_rides_along_with_the_reason;


#1. Retrive all successful bookings:
select * from Successful_Bookings;

#2.Find the average distance ride distance for each vechicle type:
select * from average_distance_ride_distance_for_each_vechicle;

#3.Get the total number of canceled rides by customers:
select * from canceled_rides_by_customers;

#4.List the top 5 customers who booked the highest number of rides;
select * from top_5_customers_who_booked_the_highest_number_of_rides;

#5.Get the number of rides cancelled by drivers due to personal and car-related issues:
select * from number_of_rides_cancelled_by_drivers_due_to_personal_C_issues;

#6.Find the maximum and minimum driver ratings for Prime Sedan bookings:
select * from maximum_and_minimum_driver_ratings_for_Prime_Sedan_bookings;

#7.Retrive all rides where payment was made using UPI:
select * from rides_where_payment_was_made_using_UPI;

#8.Find the average customer rating per vehicle type:
select * from verage_customer_rating_per_vehicle_type;

#9.Calculate the total booking value of rides completed successfully:
select * from total_booking_value_of_rides_completed_successfully;

#10.List all incomplete rides along with the reason:
select * From incomplete_rides_along_with_the_reason;