# COVID 19 DATA ANALYSIS
dataset from this folder will be used [Title](../dataset_1)

#### Python:
conda activate dev2
pip install ipykernel - to solve environment errors
packages installed: 
* pandas
* matplotlib
* seaborn
conda install -c anaconda openpyxl

#### Fields
1. Country- this is the country for which the vaccination information is provided;
2. ISO Code - ISO code for the country;
3. Date - date for the data entry; for some of the dates we have only the daily vaccinations, for others, only the (cumulative) total;
4. Total number vaccinations - this is the absolute number of total immunizations in the country;
5. People vaccinated - a person, depending on the immunization scheme, will receive one or more (typically 2) vaccines; at a certain moment, the number of vaccination might be larger than the number of people;
6. People fully vaccinated - this is the number of people that received the entire set of immunization according to the immunization scheme (typically 2); at a certain moment in time, there might be a certain number of people that received one vaccine and another number (smaller) of people that received all vaccines in the scheme;
7. Daily vaccinations (raw) - for a certain data entry, the number of vaccination for that date/country;
8. Daily vaccinations - for a certain data entry, the number of vaccination for that date/country;
9. Vaccinations per hundred - ratio (in percent) between vaccination number and total population up to the date in the country;
10. People vaccinated per hundred - ratio (in percent) between population immunized and total population up to the date in the country;
11. People fully vaccinated per hundred - ratio (in percent) between population fully immunized and total population up to the date in the country;
12. Daily vaccinations per million - ratio (in ppm) between vaccination number and total population for the current date in the country;
13. Vaccines used in the country - total number of vaccines used in the country (up to date);

Location
Date
Vaccine
Total_vaccinations

#### Links for reference 
1. https://www.kaggle.com/code/anirbansahaanik/covid-19-vaccination-data-analysis/notebook
