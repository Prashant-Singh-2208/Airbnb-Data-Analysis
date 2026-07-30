#  Airbnb Data Analysis — New York vs Bangkok

![Python](https://img.shields.io/badge/Python-3.x-blue?style=flat&logo=python)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-blue?style=flat&logo=postgresql)
![PowerBI](https://img.shields.io/badge/PowerBI-Dashboard-yellow?style=flat&logo=powerbi)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Analysis-green?style=flat)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen?style=flat)

---

##  Project Overview
An end-to-end **comparative data analysis** of Airbnb listings across two major cities — **New York (USA)** and **Bangkok (Thailand)**. This project covers the full data analytics pipeline from raw data ingestion in PostgreSQL, data cleaning and visualization in Python, to an interactive 3-page Power BI dashboard.

---

##  Business Questions Answered
1. How many listings does each city have?
2. What is the average price per night in New York vs Bangkok?
3. Which neighbourhoods have the most listings?
4. How does price vary by room type?
5. Which top 10 neighbourhoods are most expensive?
6. How does price vary by review frequency?
7. Which room types are most available throughout the year?
8. What % of listings are available for more than 180 days?
9. Who are the top 10 hosts by number of listings?
10. Which hosts have highest average price per listing?
11. Which city has higher demand based on reviews per month?
12. Which neighbourhoods generate the most reviews?

---

##  Dataset
**Source:** [Inside Airbnb](http://insideairbnb.com/get-the-data/)

| File | City | Rows |
|---|---|---|
| ny_listings.csv | New York | ~30,555 |
| bangkok_listings.csv | Bangkok | ~31,069 |

---

##  Tools Used
| Tool | Purpose |
|---|---|
| PostgreSQL | Data storage + 12 SQL queries |
| Python (Pandas) | Data cleaning + EDA |
| Matplotlib + Seaborn | 6 Visualizations |
| Power BI | Interactive 3-page dashboard |

---

##  Visualizations
1. Total Listings per City (Bar Chart).
2. Average Price per City (Bar Chart).
3. Price Distribution by Room Type (Box Plot).
4. Top Neighbourhoods by Listings (Bar Chart).
5. Availability by Room Type (Bar Chart).
6. Reviews per Month Distribution (Histogram).

---

##  Power BI Dashboard
| Page | Content |
|---|---|
| Page 1 — Market Overview | KPI cards, listings bar chart, map |
| Page 2 — Pricing Analysis | Price by room type, neighbourhood pricing, availability |
| Page 3 — NY vs Bangkok | Side-by-side comparison of all key metrics |

---

##  Key Insights
- **Bangkok** has more listings (~31K) than New York (~30K).
- **Bangkok** has significantly more expensive — avg $2955 vs $278 per night.
- **Entire home/apt** is the most common and expensive room type in both cities.
- **Bangkok** has higher review frequency indicating stronger short-term demand
- Hotel rooms show highest year-round availability(~268 days) in **New York**. 
- Shared rooms show highest year-round availability(~336 days) in **Bangkok**.


---

##  Project Structure
```
Airbnb-Data-Analysis/
├── Data-set/
│   ├── ny_clean.csv
│   └── bangkok_clean.csv
├── Visuals/
│   ├── viz1_total_listings.png
│   ├── viz2_avg_price.png
│   ├── viz3_price_roomtype.png
│   ├── viz4_top_neighbourhoods.png
│   ├── viz5_availability.png
│   └── viz6_reviews_distribution.png
├── Airbnb_project.ipynb
├── airbnbsolutins.sql
├── AIRBNB.pbix
└── README.md
```

---

##  How to Run
1. Clone the repo
2. Install: `pip install pandas matplotlib seaborn sqlalchemy psycopg2`
3. Run `airbnbsolutins.sql` in PostgreSQL
4. Open `Airbnb_project.ipynb` in Jupyter Notebook
5. Open `AIRBNB.pbix` in Power BI Desktop

---

##  Skills Demonstrated
-  PostgreSQL — complex SQL queries
-  Python — data cleaning + EDA
-  Matplotlib + Seaborn — visualizations
-  Power BI — interactive dashboard
-  Comparative analysis across 2 cities

---

##  Author
**Prashant Singh** 

 M.Sc. Physics | Aspiring Data Analyst
 Varanasi, India |  [GitHub](https://github.com/Prashant-Singh-2208)

