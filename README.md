## NETFLIX MOVIE DATA ANALYSIS PROJECT
Netflix Movies and TV Shows project dataset is from this link - https://www.kaggle.com/datasets/shivamb/netflix-shows

Create a conda environment:
 conda create --name netflix
 conda activate netflix 

 conda create -n env-01 python=3.9 scipy=0.15.0 numpy exmaple   
 pip install --upgrade seaborn matplotlib

### 0. Ask QUestions
1. which movie has the highest country viewing/releases - Done
4. Which actors are most likely to work together?
7. what type of content is added over months like holiday season (december , july, january) and the quantity of released content over the months
9. which countries have the largest quantity of released content , group this by content type . What are the most common genres in the top 5 countries ? . visualise the type of content produced by countries 
11. explore the “Age” of content on Netflix, which means the gap between when movies/shows are released and when they are added.
12. see how 11 varies per country
13. Find out more on the movie and tv rating , visualise TV vs Movies and group them based on the targeted audience eg : kids, young adult , teenagers, adults 
14. Visualise 13 based on countries 
15. Movie and TV Show Genres, quantity of content released (in the genre)
16. group 15 based on type(content)
18. Netflix Titles
19. Netflix Description
20. spliting the date_added column (second link)


Data cleaning

Data Exploration
1. How do the variables correlate? 
2. what type of content have they been focussing on over the years?
3. Movie and TV Show Duration
4. What are the top 10 genres on Netflix ?
5. Find out more on the movie and tv rating and Group them based on the targeted audience eg : kids, young adult , teenagers, adults 
Data Visualisation
1. Which countries have contributed most movies in recent years?
2. what is the content release at netflix like ?
3. what is the distribution of Netflix’s content by origin, or country ?
4. what type of content have they been focussing on over the years? 


### 1.Data collection
Data Preparation 
After downloading the dataset, I load the dataset into a dataframe for the data cleaning process

### 2.Data cleaning and processing
1. Fill in the NaN values from the dataset
    Making sure there arent any NULL value in our data to make the data consistent.
    culumns with null value include :
    - rating
    - date_added
    - director
    - cast
    - country
    - duration

2. Deleting redundant columns.
    - Handling invalid values on the date_added column, some values in the date_added column are greater than those in the release_year column (i.e. the year the movie was added is earlier than that it was released)
    - drop such invalid values to ensure data accuracy
3. Dropping duplicates.
4. Cleaning individual columns.

#### Data wrangling 

#### Data Transformation

### 3-Exploratory analysis & Visualization

### Links ive used for reference:
1. https://www.analyticsvidhya.com/blog/2021/07/visualizing-netflix-data-using-python/ 
2. https://jovian.com/janecww415/netflix-movies-and-shows-analysis
3. https://www.kaggle.com/code/thiagopanini/insights-from-netflix-the-show-must-go-on/notebook ***
4. https://www.dataquest.io/blog/comical-data-visualization-in-python-using-matplotlib/ ***
5. https://www.kaggle.com/code/nikunjmalpani/netflix-movies-and-tv-shows-data-visualization
6. https://jobymathew97.medium.com/netflix-movies-and-tv-shows-data-visualization-using-matplotlib-f1b4e91b5226
7. https://www.nomidl.com/python/netflix-data-analysis-project-using-python/
8. https://github.com/nataliafonseca/netflix-data-analysis/blob/main/notebook.ipynb 
9. https://app.datacamp.com/workspace/w/cc0a1d5f-0b59-4555-bc66-87d9dd3d5e96 ***
10. https://medium.com/@linhvu.nt/data-analysis-and-recommendations-on-netflix-content-28707163553a ***
11. https://jovian.com/astha1998/netflix-data-analysis-project 