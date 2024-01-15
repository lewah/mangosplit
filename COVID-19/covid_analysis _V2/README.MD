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
Country- this is the country for which the vaccination information is provided;
ISO Code - ISO code for the country;
Date - date for the data entry; for some of the dates we have only the daily vaccinations, for others, only the (cumulative) total;
Total number vaccinations - this is the absolute number of total immunizations in the country;
People vaccinated - a person, depending on the immunization scheme, will receive one or more (typically 2) vaccines; at a certain moment, the number of vaccination might be larger than the number of people;
People fully vaccinated - this is the number of people that received the entire set of immunization according to the immunization scheme (typically 2); at a certain moment in time, there might be a certain number of people that received one vaccine and another number (smaller) of people that received all vaccines in the scheme;
Daily vaccinations (raw) - for a certain data entry, the number of vaccination for that date/country;
Daily vaccinations - for a certain data entry, the number of vaccination for that date/country;
Vaccinations per hundred - ratio (in percent) between vaccination number and total population up to the date in the country;
People vaccinated per hundred - ratio (in percent) between population immunized and total population up to the date in the country;
People fully vaccinated per hundred - ratio (in percent) between population fully immunized and total population up to the date in the country;
Daily vaccinations per million - ratio (in ppm) between vaccination number and total population for the current date in the country;
Vaccines used in the country - total number of vaccines used in the country (up to date);

Location
Date
Vaccine
Total_vaccinations