# Covid-19 Vaccination and Deaths Analysis
Datasets are from this link - https://ourworldindata.org/covid-deaths  and this linkhttps://github.com/AlexTheAnalyst/PortfolioProjects/blob/main/CovidVaccinations.xlsx 

dataset_1 from https://www.kaggle.com/datasets/gpreda/covid-world-vaccination-progress/?select=country_vaccinations_by_manufacturer.csv 

Azure Data Studio + Docker was used to import excel file to create a working database to practice SQL

Python:
conda activate dev2
pip install ipykernel - to solve environment errors
packages installed: 
pandas, 
conda install -c anaconda openpyxl

Data Cleaning process
1. Delete rows if records location Africa from date 03/01/2020 to 08/01/2021, no relevant information there 
2. Asia	Afghanistan	from 03/01/2020 to 28/01/2022



TASKS:
Deaths
-----
1. Shows likelihood of people dying if you contract covid in their country(Kenya)
2. Shows what percentage of population infected with Covid 
3. Countries with Highest Infection Rate compared to Population
4. Countries with Highest Death Count per Population
5. Showing contintents with the highest death count per population

Vaccination
----

1. Which country started vaccinating its citizens first?
2. Which country has the highest vaccinated people?
3. What are the different categories of vaccines offered?
4. Which vaccine is used by various countries?

SQL:

Column 'continent' does not allow DBNull.Value.  -  change to allows nulls
Column 'new_cases' does not allow DBNull.Value
Column 'new_cases_per_million' does not allow DBNull.Value
Column 'new_deaths' does not allow DBNull.Value.
Column 'new_deaths_per_million' does not allow DBNull.Value.
Column 3 [population] The given value '4721383370' of type String from the data source cannot be converted to type int - change to bigint
Column 9 [new_deaths] The given value '302' of type String from the data source cannot be converted to type tinyint - change datatype to int
Column 8 [total_deaths] given value '32863' of type String from the data source cannot be converted to type smallint - change datatype to int
Column 6 [new_cases] given value '37010' of type String from the data source cannot be converted to type smallint - change datatype to int
Column 18 [icu_patients] The given value '62' of type String from the data source cannot be converted to type nvarchar - change to (nvarchar(50))
Column 19 [icu_patients_per_million] The given value '1.381' of type String from the data source cannot be converted to type nvarchar - chagne to (nvarchar(50))
Column 20 [hosp_patients] The given value '426' of type String from the data source cannot be converted to type nvarchar
Column 21 [hosp_patients_per_million] The given value '16.274' of type String from the data source cannot be converted to type nvarchar 
Column 24 [weekly_hosp_admissions] The given value '34' of type String from the data source cannot be converted to type nvarchar
Column 25 [weekly_hosp_admissions_per_million] The given value '2.917' of type String from the data source cannot be converted to type nvarchar 
Column 22 [weekly_icu_admissions] The given value '195' of type String from the data source cannot be converted to type nvarchar 
Column 23 [weekly_icu_admissions_per_million] The given value '9.947' of type String from the data source cannot be converted to type nvarchar

Skills used in SQL are:
* Joins
* CTE's
* Temp Tables
* Windows Functions
* Aggregate Functions
* Creating Views
* Converting Data Types

PYTHON:
1. import data through pandas
2. data exploration: checking the shape of data frame, check for missing values/Null



Country- this is the country for which the vaccination information is provided;
ISO Code - ISO code for the country;
Date - date for the data entry; for some of the dates we have only the daily vaccinations, for others, only the (cumulative) total;
Total number of vaccinations - this is the absolute number of total immunizations in the country;
Total number of people vaccinated - a person, depending on the immunization scheme, will receive one or more (typically 2) vaccines; at a certain moment, the number of vaccination might be larger than the number of people;
Total number of people fully vaccinated - this is the number of people that received the entire set of immunization according to the immunization scheme (typically 2); at a certain moment in time, there might be a certain number of people that received one vaccine and another number (smaller) of people that received all vaccines in the scheme;
Daily vaccinations (raw) - for a certain data entry, the number of vaccination for that date/country;
Daily vaccinations - for a certain data entry, the number of vaccination for that date/country;
Total vaccinations per hundred - ratio (in percent) between vaccination number and total population up to the date in the country;
Total number of people vaccinated per hundred - ratio (in percent) between population immunized and total population up to the date in the country;
Total number of people fully vaccinated per hundred - ratio (in percent) between population fully immunized and total population up to the date in the country;
Daily vaccinations per million - ratio (in ppm) between vaccination number and total population for the current date in the country;
Vaccines used in the country - total number of vaccines used in the country (up to date);
