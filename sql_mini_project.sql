-- creating database is the first and formost step in any project
create database sql_mini_project;

-- after creating we also need to use the database in order to performe any actions
use  sql_mini_project;

-- creating a table structur e to fit the data with right constarints
CREATE TABLE covid_india (
    location VARCHAR(100),
    date DATE,
    total_cases DOUBLE,
    new_cases DOUBLE,
    total_deaths DOUBLE,
    new_deaths DOUBLE,
    total_tests DOUBLE,
    new_tests DOUBLE,
    total_vaccinations DOUBLE,
    people_vaccinated DOUBLE,
    people_fully_vaccinated DOUBLE,
    new_vaccinations DOUBLE,
    new_cases_smoothed DOUBLE,
    new_deaths_smoothed DOUBLE
);
select* from covid_india;

-- IMPLIMENTING  CONSTRAINTS -----------------------------
ALTER TABLE covid_india MODIFY location VARCHAR(100) NOT NULL, MODIFY date DATE NOT NULL;

ALTER TABLE covid_india ADD PRIMARY KEY (location, date); -- implimenting primary key as combination of two columns

ALTER TABLE covid_india ADD CONSTRAINT chk_cases CHECK (total_cases >= 0);

ALTER TABLE covid_india ADD CONSTRAINT chk_new_cases CHECK (new_cases >= 0),
ADD CONSTRAINT chk_deaths CHECK (total_deaths >= 0);



-- CHECKING CONSTRAINTS WORKING 
INSERT INTO covid_india VALUES
('India', '2025-04-03', 12450000, 90000, 165000, 800,
250000000, 1200000, 75000000, 65000000, 10000000, 2000000,
70000.5, 450.2); -- checks all conditions so data is inserted

INSERT INTO covid_india VALUES
('India', '2021-04-03', 12450000, 90000, 165000, 800,
250000000, 1200000, 75000000, 65000000, 10000000, 2000000,
70000.5, 450.2);  -- fails to insert as  date is already present

INSERT INTO covid_india VALUES
('India', '2021-13-01', 12650000, 85000, 167000, 800,
254000000, 1100000, 79000000, 69000000, 10000000, 1200000,
65000.4, 400.8); -- fails to insert as it voilates  date check


-- USING  CLAUSES (WHERE, ORDER BY, LIMIT) ----------------------
SELECT * FROM covid_india WHERE location = 'India';

SELECT * FROM covid_india ORDER BY date DESC;

SELECT date, new_cases FROM covid_india ORDER BY new_cases DESC LIMIT 5;
-- ----------------------------------------------------------------


-- AGGREGATE FUNCTIONS--------------------------------------------------
SELECT SUM(total_cases) AS total_cases_sum FROM covid_india;

SELECT AVG(new_cases) AS avg_daily_cases FROM covid_india;

SELECT MAX(new_deaths) AS max_deaths FROM covid_india;

SELECT MONTH(date) AS month, SUM(new_cases) AS monthly_cases FROM covid_india GROUP BY MONTH(date);
--  ------------------------------------------------------------------

-- STRING FUNCTIONS---------------------------------------------------
SELECT UPPER(location) FROM covid_india;

SELECT location, LENGTH(location) FROM covid_india;
-- -------------------------------------------------------------------

-- DATE TIME FUNCTIONS-------------------------------------------------
SELECT * FROM covid_india WHERE date BETWEEN '2021-03-01' AND '2021-03-31';

SELECT sum(total_cases) FROM covid_india WHERE YEAR(date) = 2022;

-- ---------------------------------------------------------------------

SELECT MONTH(date) AS month, MAX(new_cases) AS peak_cases
FROM covid_india
GROUP BY MONTH(date);

SELECT date, total_vaccinations
FROM covid_india
ORDER BY date;
