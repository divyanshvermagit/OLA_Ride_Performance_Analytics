-- =========================================================
-- Project: OLA Ride Performance Data Analysis
-- Author: Divyansh Verma
-- Database: Ola
-- Description:
-- SQL queries and views to analyze ride performance,
-- revenue, cancellations, ratings, and customer behavior.
-- =========================================================


-- =========================
-- DATABASE SETUP
-- =========================
CREATE DATABASE IF NOT EXISTS Ola;
USE Ola;


-- =========================
-- 1. SUCCESSFUL BOOKINGS
-- =========================
-- Retrieve all successful bookings
CREATE VIEW Successful_Bookings AS
SELECT *
FROM bookings
WHERE Booking_Status = 'Success';


-- =========================
-- 2. AVERAGE RIDE DISTANCE
-- =========================
-- Average ride distance for each vehicle type
CREATE VIEW ride_distance_for_each_vehicle AS
SELECT 
    Vehicle_Type,
    AVG(Ride_Distance) AS avg_distance
FROM bookings
GROUP BY Vehicle_Type;


-- =========================
-- 3. CUSTOMER CANCELLATIONS
-- =========================
-- Total number of rides cancelled by customers
CREATE VIEW cancelled_rides_by_customers AS
SELECT 
    COUNT(*) AS total_customer_cancellations
FROM bookings
WHERE Booking_Status = 'cancelled by Customer';


-- =========================
-- 4. TOP 5 CUSTOMERS
-- =========================
-- Customers with the highest number of bookings
CREATE VIEW Top_5_Customers AS
SELECT 
    Customer_ID,
    COUNT(Booking_ID) AS total_rides
FROM bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC
LIMIT 5;


-- =========================
-- 5. DRIVER CANCELLATIONS
-- =========================
-- Rides cancelled by drivers due to personal & car issues
CREATE VIEW Rides_cancelled_by_Drivers_P_C_Issues AS
SELECT 
    COUNT(*) AS total_driver_cancellations
FROM bookings
WHERE cancelled_Rides_by_Driver = 'Personal & Car related issue';


-- =========================
-- 6. DRIVER RATINGS
-- =========================
-- Max and Min driver ratings for Prime Sedan
CREATE VIEW Max_Min_Driver_Rating AS
SELECT 
    MAX(Driver_Ratings) AS max_rating,
    MIN(Driver_Ratings) AS min_rating
FROM bookings
WHERE Vehicle_Type = 'Prime Sedan';


-- =========================
-- 7. UPI PAYMENTS
-- =========================
-- All rides paid using UPI
CREATE VIEW UPI_Payment AS
SELECT *
FROM bookings
WHERE Payment_Method = 'UPI';


-- =========================
-- 8. CUSTOMER RATINGS
-- =========================
-- Average customer rating per vehicle type
CREATE VIEW AVG_Cust_Rating AS
SELECT 
    Vehicle_Type,
    AVG(Customer_Rating) AS avg_customer_rating
FROM bookings
GROUP BY Vehicle_Type;


-- =========================
-- 9. TOTAL REVENUE
-- =========================
-- Total booking value of successful rides
CREATE VIEW total_successful_ride_value AS
SELECT 
    SUM(Booking_Value) AS total_successful_ride_value
FROM bookings
WHERE Booking_Status = 'Success';


-- =========================
-- 10. INCOMPLETE RIDES
-- =========================
-- Incomplete rides with reason
CREATE VIEW Incomplete_Rides_Reason AS
SELECT 
    Booking_ID,
    Incomplete_Rides_Reason
FROM bookings
WHERE Incomplete_Rides = 'Yes';


-- =========================
-- VIEW OUTPUT QUERIES
-- =========================
SELECT * FROM Successful_Bookings;
SELECT * FROM ride_distance_for_each_vehicle;
SELECT * FROM cancelled_rides_by_customers;
SELECT * FROM Top_5_Customers;
SELECT * FROM Rides_cancelled_by_Drivers_P_C_Issues;
SELECT * FROM Max_Min_Driver_Rating;
SELECT * FROM UPI_Payment;
SELECT * FROM AVG_Cust_Rating;
SELECT * FROM total_successful_ride_value;
SELECT * FROM Incomplete_Rides_Reason;
