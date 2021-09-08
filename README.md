# Project 2: ETL

## Billboard, Grammy, Artists
### Extract: 

We used 3 different datasets limited to the years 1999-2019 from the public platform [Kaggle](https://www.kaggle.com/danield2255/data-on-songs-from-billboard-19992019/version/1) conducted by Daniel DeFoe. The raw data can be found in [Resources](https://github.com/FrankJiang1208/project_2/tree/main/Resources).

The datasets used for this project provided information on:
* Artists
* BillboardHot100 songs from the year 1999 to 2019.
* Grammy songs from 1999 to 2019.

### Transform:


[Jupyter Notebook](https://github.com/FrankJiang1208/project_2/blob/main/ETL.ipynb)

In order to transform the public data and use it in our study we performed the following:
* Used Pandas functions in Jupyter Notebook to load all three CSV files.
* Retained only a few columns from the original csv files and dropped all the columns that were not relevant to the focus of this study.
* In the Billboard file, multiple artists were listed for the same song, we cleaned up and stacked each artist in a new row. 
* In the Grammy file, there were many irrelevant data cells of songwriters, soloist etc attached to the artist name. We cleaned said data and kept only the artists who are asscociated with each song. 
* Reviewed the files and transformed into data frames

### Load:


[Entity Relationship Diagram (ERD)](https://github.com/FrankJiang1208/project_2/blob/main/ERDiagram.PNG)

[Table Schemata](https://github.com/FrankJiang1208/project_2/blob/main/artists_db_table_schemata.sql)

* We used pgAdmin to upload our data into a SQL Database (relational) to link the data by our common identifier and to query the datasets as instructed.

### Documentation:
[Documentation Containing Business Rules](https://github.com/FrankJiang1208/project_2/blob/main/Documentation.xlsx)

### Instructions:
Running the program:

1. Open ETL.ipynb
2. run everything and when prompted, enter pgadmin password


### Findings: 

[Join Query](https://github.com/FrankJiang1208/project_2/blob/main/joinqueries.sql)

After querying the provided data, we can observe that:
* Drake, the music artist, had the most entires in the Billboard dataset while U2 had the most entries in the Grammy dataset.
* There are 61 song entries that are present in both the Billboard Dataset and the Grammy dataset.



    
    




