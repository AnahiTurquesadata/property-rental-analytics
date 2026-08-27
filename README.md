# Property-rental-analytics
End-to-end data analytics project analyzing short-term rental performance across channels. Transformed raw booking data with SQL & BigQuery, and built an interactive Looker Studio dashboard tracking Gross Revenue, ADR, ALOS, and market share.

🏨 Property Rental Business Analytics Dashboard

📌 Project Overview

This project analyzes reservation and revenue performance for a property rental portfolio using SQL, Google BigQuery, and Google Looker Studio.
The objective was to transform raw transactional booking data into an interactive multi-page dashboard that provides actionable insights into revenue distribution, sales channel efficiency, and stay seasonality.
The dashboard answers key business questions such as:
Which booking channels generate the highest gross revenue?
Which distribution channels drive the largest volume of bookings?
What is the overall Average Daily Rate (ADR) and Average Length of Stay (ALOS)?
How does the booking trend evolve month over month across different channels?
Which sales platforms yield the highest average daily rates?

🛠️ Tools Used
Google Sheets 
SQL
Google BigQuery
Google Looker Studio

📂 Dataset

The dataset contains reservation and property performance metrics across several rental buildings, including:
Booking transactions and unique booking IDs
Property IDs and building codes
Booking channels (Airbnb, Booking.com, Decolar, Direct Website, and unassigned channels)
Reservation months
Number of nights booked
Net price and revenue metrics

🧹 Data Preparation

Before building the dashboard, the dataset required cleaning, modeling, and aggregation steps:
Combined property master tables with reservation transaction data using relational joins.
Handled unassigned and missing values using SQL functions (`COALESCE`, `NULLIF`).
Standardized and created consistent chronological dimensions for monthly trend analysis.
Built consolidated analytical views in Google BigQuery (`vw_dashboard_reservas`) to optimize querying performance.
Calculated weighted unit economics (Average Daily Rate and Average Length of Stay) at aggregate levels.
Cross-checked total revenue, nights sold, and booking counts between raw data and aggregated views to ensure data integrity.
Connected validated BigQuery data views directly to Google Looker Studio.

📊 SQL Analysis

The SQL scripts and views were developed to calculate and expose key metrics, including:
Gross Revenue
Total Bookings
Total Nights Booked
Average Daily Rate (ADR)
Average Length of Stay (ALOS)
Average Ticket per Booking
Revenue Share by Channel
Bookings Share by Channel
Monthly Trends by Booking Channel

All SQL queries and view creation scripts are available in the SQL folder.

📈 Dashboard Preview

Page 1: Executive Summary & Booking Trends
<img width="806" height="582" alt="Captura de tela 2026-08-27 172619" src="https://github.com/user-attachments/assets/182ff435-76ba-4a1e-bc9d-20e5cb7c9c44" />

Page 2: Unit Economics & Stay Performance
<img width="804" height="542" alt="Captura de tela 2026-08-27 172632" src="https://github.com/user-attachments/assets/02a0c561-f9cc-4b60-91fc-4465e755951f" />


Page 3: Channel Performance & Distribution
<img width="798" height="594" alt="Captura de tela 2026-08-27 172643" src="https://github.com/user-attachments/assets/37b5edd7-27e9-48d0-89bf-349ffac82d9a" />
