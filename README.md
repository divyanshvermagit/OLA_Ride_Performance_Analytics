# 🚕 OLA Ride Analytics

## 📌 Project Overview
This project is an end-to-end **Data Analyst portfolio project** focused on analyzing
OLA ride booking data for **Bengaluru city** over a one-month period.
The dataset contains **100,000 simulated ride records**, designed to closely
match real-world ride-hailing business scenarios.

The analysis uncovers insights related to **ride success rates, cancellations,
revenue patterns, vehicle performance, customer behavior, and ratings** using
**SQL and Power BI**.

---

## 🎯 Business Objectives
- Analyze overall booking success and cancellation rates
- Identify key cancellation reasons from customers and drivers
- Understand vehicle-wise ride distance and ratings
- Evaluate revenue distribution by payment methods
- Identify high-value and frequent customers
- Compare customer and driver ratings for service quality insights

---

## 🗂 Dataset Description
**City:** Bengaluru  
**Time Period:** 1 Month  
**Total Records:** 100,000+

### 📊 Key Constraints Applied
- ✅ Booking Success Rate: **62%**
- ❌ Customer Cancellations: **< 7%**
- ❌ Driver Cancellations: **< 18%**
- ⚠️ Incomplete Rides: **< 6%**
- 📈 Higher ride volume & booking value on **weekends and match days**

---

## 📑 Data Columns
1. Date  
2. Time  
3. Booking_ID  
4. Booking_Status  
5. Customer_ID  
6. Vehicle_Type  
7. Pickup_Location  
8. Drop_Location  
9. V_TAT (Vehicle Arrival Time)  
10. C_TAT (Customer Arrival Time)  
11. Cancelled_Rides_By_Customer  
12. Cancelled_Rides_By_Driver  
13. Incomplete_Rides  
14. Incomplete_Rides_Reason  
15. Booking_Value  
16. Payment_Method  
17. Ride_Distance  
18. Driver_Ratings  
19. Customer_Rating  

---

## 🛠 Tools & Technologies
- **SQL (MySQL)**
- **Power BI**
- **DAX**
- **Power Query**
- **Excel / CSV**

---

## 🧮 SQL Analysis

### Database Setup
```sql
CREATE DATABASE Ola;
USE Ola;
