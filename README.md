# Ola_Uber_Analysis 🚖📊
Project Overview : 
This project aims to analyze and derive insights from ride-booking data collected from a simulated ride-hailing platform. By leveraging SQL queries and Power BI visualizations, this analysis provides key business insights into customer behavior, driver performance, revenue streams, and operational metrics. The findings are critical for improving customer satisfaction, optimizing operations, and driving strategic decisions.

Dataset Description : 
The dataset used in this project includes comprehensive booking and ride-related details with the following key columns:

Date/Time: Timestamp of the booking.
Booking ID: Unique identifier for each ride.
Booking Status: Status of the booking (e.g., successful, canceled, incomplete).
Customer ID: Unique identifier for customers.
Vehicle Type: Type of vehicle booked (e.g., Prime Sedan, Prime SUV, etc.).
Pickup & Drop Location: Starting and ending locations of rides.
Ride Distance: Total distance of each ride.
Payment Method: Mode of payment used (e.g., UPI, Cash, Credit Card).
Driver Ratings: Ratings given by customers to drivers.
Customer Ratings: Ratings provided by drivers for customers.
Booking Value: Total cost of each ride.
Cancellation Details: Reason and initiator of ride cancellations.
The dataset also includes key operational metrics such as:

Reasons for incomplete rides:
Ride cancellations by customers and drivers.
TAT (Turnaround Time) for customers and vehicles.
Key Insights Derived
Using SQL queries, we extracted and analyzed the following insights:

Total number of successful bookings:
Average ride distance for each vehicle type.
Number of canceled rides by customers and drivers (categorized by reasons like personal or car-related issues).
Maximum and minimum driver ratings for Prime Sedan rides.
Total booking value of completed rides.
Payment trends, including rides paid via UPI.
Average customer rating per vehicle type.
Power BI Dashboards
Screenshot 2025-02-09 002859

Dashboard:
<img width="988" height="526" alt="Dashboard_Screenshot" src="https://github.com/user-attachments/assets/58dd66c1-3055-4a8a-8641-4964b67a249a" />


The insights were visualized in Power BI for better understanding and actionable takeaways:

Ride Volume Over Time: A time-series chart showing daily and weekly ride volumes.
Booking Status Breakdown: A pie chart illustrating the proportion of booking statuses (successful, canceled, incomplete).
Top 5 Vehicle Types by Ride Distance: A bar chart ranking vehicle types by total ride distance.
Revenue by Payment Method: A stacked bar chart categorizing revenue streams based on payment methods.
Canceled Rides Reasons: Separate bar charts highlighting reasons for cancellations by customers and drivers.
Top 5 Customers by Booking Value: A leaderboard visual showcasing the highest-spending customers.
Ride Distance Distribution Per Day: A histogram visualizing ride distances for different days.
Driver Rating Distribution: A box plot summarizing the range of driver ratings by vehicle type.
Customer vs. Driver Ratings: A scatter plot comparing customer and driver ratings for individual rides.
Project Structure
SQL Queries: Structured queries to derive data insights and perform analytical tasks.
Power BI Dashboards: Interactive and visually rich dashboards presenting the analyzed data.
Documentation: Detailed explanation of methodologies, queries, and visualizations.
Insights Summary: Key findings and recommendations based on the data analysis.
Goals and Takeaways
This project provides actionable insights for:

Enhancing customer experience by identifying top-rated and low-performing vehicle types or drivers.
Optimizing operational efficiency by analyzing reasons for cancellations and incomplete rides.
Increasing revenue by identifying the most popular payment methods and high-value customers.
Supporting strategic decisions using customer and driver rating trends.
