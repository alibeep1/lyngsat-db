Some of the .csv files here were used to import our data into the database.
Some were responsible for importing a subset of a table's records such as v6_networks_cleaned_2.csv and v6_networks_cleaned_1.csv


Importing the data:
As you see in the notebook, I tried inserting the data from within Python but failed because of unclear reasons. Hence, I resorted to importing CSV files directly.
I imported the files as per below:

LOAD DATA INFILE 'C://ProgramData//MySQL//MySQL Server 8.0//Uploads//[CSV FILE NAME HERE].csv'
INTO TABLE [TABLE NAME HERE]
CHARACTER SET utf8
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


Firstly, I removed the FK constraints and then put them back so to have a smooth importing process.