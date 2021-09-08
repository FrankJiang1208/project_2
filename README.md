# Project_2: ETL-project proposal

## Billboard, Grammy, Artists
## Extract: 

We used 3 different datasets from the public platform Kaggle website. These datasets are limited to the years 1999-2019 and were found on https://www.kaggle.com/danield2255/data-on-songs-from-billboard-19992019/version/1 conducted by Daniel DeFoe.
[Data can be found here] https://github.com/FrankJiang1208/project_2/tree/main/Resources 

The data in the three files included the following information:
* Artists
* BillboardHot100 songs from the year 1999 to 2019.
* Grammy songs from 1999 to 2019.

## Transformation of data:


[Jupyter Notebook - which we worked on to clean up our data] https://github.com/FrankJiang1208/project_2/blob/main/ETL.ipynb

In order to transform the public data and use it in our study we performed the following:
* Used Pandas functions in Jupyter Notebook to load all three CSV files.
* Retained only few columns from the original csv files and dropped all the columns not relevant to the focus of this study.
* In the Billboard file, multiple artists were listed for the same song, we tried to clean up and stack each artist in a new row. 
* In the Grammy file, there were many irrelavent infomations of songwriters, soloist  etc attached to the artist name. We tried our best to cleanup and keep only the artist who is asscociated with each song. In this file also, we did stack each artist in a new row.
* Reviewed the files and transformed into data frames

## Load:


[ERD Diagram] https://github.com/FrankJiang1208/project_2/blob/main/ERDiagram.PNG

[Shemata.sql file] https://github.com/FrankJiang1208/project_2/blob/main/artists_db_table_schemata.sql

* We used pgAdmin to upload our data into a SQL Database (relational) to link the data by our common identifier, Artists and to query the datasets as instructed.

## Documentation:
[Documentaion] https://github.com/FrankJiang1208/project_2/blob/main/Documentation.xlsx

## Instructions
Running the program:

1. Open ETL.ipynb
2. run everything and when prompted, enter pgadmin password


## Query: 

[Joinqueries] https://github.com/FrankJiang1208/project_2/blob/main/joinqueries.sql

* After querying the provided data, we can observe that the Country music genre has the most entries in the Billboard dataset while the Rock music genre has the most entries in the Grammy dataset. We can also discern that Drake, the music artist, had the most entires in the Billboard dataset while Adele had the most entries in the Grammy dataset.




    
    




