# Forgotten_Florida_50_Miles_Marathon_Analysis

## About

We are analyzing the results of the 2024 Forgotten Florida 50-Mile participants to identify key performance trends, demographic patterns, and factors contributing to race completion. The goal is to provide valuable insights that help future runners prepare more effectively. This analysis is based on data from the 2024 event.

## Project Goal

The project analyzes the results of the 2024 Forgotten Florida 50-Mile participants, offering valuable insights to help future runners prepare effectively for the race.


## About Data

This project utilizes race data from the 2024 Forgotten Florida 50-Mile event, including participant demographics, rank and finishing times. The dataset captures various performance metrics and other factors to provide a comprehensive analysis of what it takes to complete the race.

| Column | Description | Data Type |
|----------|----------|----------|
| Place | rank for all completed participants | INT |
| First | first name of the participants | VARCHAR(20) |
| Last | last name of the participants | VARCHAR(20) |
| City | city where the participants is from |  VARCHAR(10) |
|  | state where the participants is from |  VARCHAR(10) |
| Age | age of the participants | INT |
| Division | division based on gender | VARCHAR(5) |
| DP | division rank for completed participants| INT |
| Time | time for participant to complete | TIME |
| rank | rank percentage for all the competitions participants have completed | DECIMAL (10,2) |

## Analysis List

1. Demographic Analysis
Conduct an analysis to understand participant demographics and evaluate individual performance. The goal is to categorize participants based on their results and identify key trends and insights.

## Approach Used

1. Data Wrangling
The initial stage involves cleaning and structuring the data to ensure it is ready for analysis.

Acquiring the Database:
Data is collected by copying information directly from the website and pasting it into Excel to create a structured dataset. 

2. Feature Engineering
Feature engineering allows us to create new columns from existing data, adding more insights to the dataset.

Fullname:
Add a column named "fullname" to display the participant's full name, eliminating the need for separate "first" and "last" name columns.

Total_minutes:
Add a column named "total_minutes" to represent the time in minutes instead of hours and minutes.

Latitude and Longitude:
Add two columns named "latitude" and "longitude" to capture geographic coordinates, which will later be combined into a "latlong" column.

Latlong:
Add a column named "latlong" to combine latitude and longitude values, which will be used later for visualization to pinpoint participants' locations in relation to the race.

3. Exploratory Data Analysis (EDA)
Exploratory Data Analysis is conducted to explore the dataset and provide valuable insights that address the project's objectives and key questions.

## Questions 

### Demographic Questions

1. How many states were represented in the race?
2. What was the average time for men compared to women?
3. What were the ages of the youngest and oldest participants in the race?
4. What was the average time for each age group?
5. Who were the top 3 male and female participants?
