 Hospital SQL Analysis Project
Hi! This project is a collection of 10 SQL queries I wrote using a real-world dataset from the CMS Hospital General Information portal. I used MySQL Workbench to explore and analyze the data, starting with simple row counts and gradually moving toward more complex queries involving grouping, averages, conditional filters, and aggregations.

The dataset includes hospital-level information such as facility names, ZIP codes, state, emergency services availability, hospital ownership types, and safety measure reporting. While the dataset didn’t include financial data, it gave me a great opportunity to practice SQL and understand healthcare data structure and quality indicators.

 Progression: From Basics to Difficult Queries
I structured this project in a way that reflects my learning path — starting with basic row counts and working my way up to more analytical insights.

 Basic-Level Queries
These helped me get familiar with the data and write simple SELECT, COUNT, and GROUP BY queries.

Q1: Total number of records in the dataset

Q2: Number of hospitals per state

Q3: Top hospitals by average covered charge (modified based on dataset)

Q4: How many hospitals meet critical access criteria (Y/N)?

 Medium-Level Queries
These involved conversions, averages, and grouping by ownership/state.

Q5: What is the average ZIP code per state? (used CAST to convert ZIPs to numbers)

Q6: What is the average number of safety measures reported by each hospital ownership type?

Q7: How many hospitals offer emergency services in each state?

Q8: Which ZIP codes have the most hospitals that offer emergency services?

 Advanced Queries
These required combining multiple filters, using HAVING, CAST, and multiple layers of logic.

Q9: Which states have more than 50 emergency hospitals, and what’s their average safety measure count?

Q10: Top 5 ZIP codes with the highest average safety measure count (only those with an average > 5)

 What’s Included
hospital_analysis.sql: Contains all 10 queries, each well-commented with the original question.

 Tools & Skills Used
MySQL Workbench 8.0

SQL fundamentals: SELECT, COUNT, GROUP BY, ORDER BY, LIMIT

Intermediate SQL: AVG, CAST, HAVING, filtering NULLs and text

Dataset cleanup & transformation

Real-world data interpretation in healthcare domain

 Final Thoughts
This project helped me improve my SQL skills while working with real healthcare data. I got to explore hospital service availability, safety reporting, and state-wise distributions — and gained experience writing both simple and advanced queries in a structured way.

If you're exploring similar healthcare or public datasets, feel free to clone this repo and try the queries yourself. I'm happy to connect and collaborate!
