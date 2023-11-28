# Covid-19 Vaccination and Deaths Analysis
Datasets are from this link - https://ourworldindata.org/covid-deaths  and this linkhttps://github.com/AlexTheAnalyst/PortfolioProjects/blob/main/CovidVaccinations.xlsx 

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



Tasks
1. Shows likelihood of people dying if you contract covid in their country(Kenya)
2. Shows what percentage of population infected with Covid 
3. Countries with Highest Infection Rate compared to Population
4. Countries with Highest Death Count per Population
5. Showing contintents with the highest death count per population

Which country started vaccinating its citizens first?
Which country has the highest vaccinated people?
What are the different categories of vaccines offered?
Which vaccine is used by various countries?

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
Column 18 [icu_patients] The given value '62' of type String from the data source cannot be converted to type nvarchar - chage to (nvarchar(50))
Column 19 [icu_patients_per_million] The given value '1.381' of type String from the data source cannot be converted to type nvarchar - chage to (nvarchar(50))
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
