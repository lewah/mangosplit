# Covid-19 Vaccination and Deaths Analysis
Datasets are from this link - https://ourworldindata.org/covid-deaths  and this linkhttps://github.com/AlexTheAnalyst/PortfolioProjects/blob/main/CovidVaccinations.xlsx 

dataset_1 from https://www.kaggle.com/datasets/gpreda/covid-world-vaccination-progress/?select=country_vaccinations_by_manufacturer.csv 
dataset_2 is used in the file  [Title](step1.ipynb)
[Title](cleaned_vac_data.csv) is used in the file [Title](step2.ipynb) and [Title](step3.ipynb)

### Fields in the dataset

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


#### Python:
conda activate dev2
pip install ipykernel - to solve environment errors
packages installed: 
* pandas
* matplotlib
* seaborn
conda install -c anaconda openpyxl

Process

1. import data through pandas
2. data exploration: checking the shape of data frame, check for missing values/Null
3. split the dataset into 2 separating data grouped by continents and data grouped by countries; [Title](continents_data.csv) and [Title](countries_data.csv)
4. Cleaning the [Title](countries_data.csv) dataset by dropping columns that arent in use and filling in missing values

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

Total popluation that is vaccinated in the world .
Top 30 countries with highest vaccination count
Top 30 countries that are vaccinated per hundered?(This will differ as few countries are less populated)
Top 30 countries vaccine comparision between December ,January and February.
Most popluar Vaccine in Individual countries?

## SQL

Azure Data Studio + Docker was used to import excel file to create a working database to practice SQL
** refer to the file changes_made 


