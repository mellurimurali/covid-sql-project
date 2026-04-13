# 📊 COVID-19 India Data Analysis using SQL

## 📌 Project Overview

This project focuses on analyzing COVID-19 data for India using SQL. It demonstrates core database concepts such as table creation, constraints, data querying, and analytical functions. The dataset includes daily records of cases, deaths, testing, and vaccination statistics.

---

## 🎯 Objectives

* Design a structured SQL table for real-world data
* Perform data analysis using SQL queries
* Apply constraints to ensure data integrity
* Use aggregate, string, and date-time functions
* Generate meaningful insights from the dataset

---

## 🗂️ Dataset Description

The dataset contains daily COVID-19 statistics with the following fields:

* `location` – Country/Region name
* `date` – Record date (YYYY-MM-DD format)
* `total_cases` – Total confirmed cases
* `new_cases` – Daily new cases
* `total_deaths` – Total deaths
* `new_deaths` – Daily new deaths
* `total_tests` – Total tests conducted
* `new_tests` – Daily new tests
* `total_vaccinations` – Total vaccinations
* `people_vaccinated` – People with at least one dose
* `people_fully_vaccinated` – Fully vaccinated individuals
* `new_vaccinations` – Daily vaccinations
* `new_cases_smoothed` – Smoothed new cases
* `new_deaths_smoothed` – Smoothed new deaths

---

## 🧱 Database Schema

```sql
CREATE TABLE covid_india (
    location VARCHAR(100),
    date DATE,

    total_cases BIGINT,
    new_cases BIGINT,
    total_deaths BIGINT,
    new_deaths BIGINT,

    total_tests BIGINT,
    new_tests BIGINT,

    total_vaccinations BIGINT,
    people_vaccinated BIGINT,
    people_fully_vaccinated BIGINT,
    new_vaccinations BIGINT,

    new_cases_smoothed FLOAT,
    new_deaths_smoothed FLOAT,

    PRIMARY KEY (location, date)
);
```

---

## 🔐 Constraints Implemented

* **PRIMARY KEY**: Ensures uniqueness of `(location, date)`
* **NOT NULL**: Applied on essential fields
* **CHECK constraints**: Prevent negative values in numeric columns

---

## 🔍 Key SQL Operations

### 📌 Basic Queries

### 📌 Filtering Data

### 📌 Sorting

## 📊 Aggregate Functions

## 🔤 String Functions

## 📅 Date Functions

## 📈 Insights Derived

* Identified peak COVID-19 waves using daily case trends
* Analyzed vaccination growth over time
* Evaluated death rates relative to total cases
* Compared monthly case distributions

---

## 🛠️ Tools Used

* MySQL Workbench
* SQL (Structured Query Language)
* Kaggle Dataset

---

## 📌 How to Run

1. Import dataset into MySQL Workbench
2. Create table using provided schema
3. Run SQL queries for analysis

---

## 📎 Project Structure

```
covid-sql-project/
│── covid_project.sql
│── README.md
```
