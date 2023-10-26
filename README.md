## NETFLIX MOVIE DATA ANALYSIS PROJECT
Create a conda environment:
 conda create --name netflix
 conda activate netflix 

 conda create -n env-01 python=3.9 scipy=0.15.0 numpy exmaple   
 pip install --upgrade seaborn matplotlib

### 0. Ask QUestions
1. which movie has the highest country viewing/releases - Done
2. How do the variables correlate? - done
3. Which countries have contributed most movies in recent years?
4. Which actors are most likely to work together?
5. what is the content release at netflix like ? - done
6. what type of content have they been focussing on over the years?
7. what type of content is added over months like holiday season (december , july, january) and the quantity of released content over the months
8. what is the distribution of Netflix’s content by origin, or country
9. which countries have the largest quantity of released content , group this by content type
10. visualise the type of content produced by countries 
11. explore the “Age” of content on Netflix, which means the gap between when movies/shows are released and when they are added.
12. see how 11 varies per country
13. Find out more on the movie and tv rating , visualise TV vs Movies and group them based on the targeted audience eg : kids, young adult , teenagers, adults 
14. Visualise 13 based on countries 
15. Movie and TV Show Genres, quantity of content released (in the genre)
16. group 15 based on type(content)
17. Movie and TV Show Duration
18. Netflix Titles
19. Netflix Description

### 1.Data collection

### 2.Data cleaning and processing
1. Remove the NaN values from the dataset
Making sure there arent any NULL value in our data to make the data consistent.
culumns with null value include :
- rating
- date_added
- director
- cast
- country
- duration

2. Deleting redundant columns.
3. Dropping duplicates.
4. Cleaning individual columns.

#### Data wrangling 

#### Data Transformation

### 3-Exploratory analysis & Visualization