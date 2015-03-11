###Purpose
To demonstrate the ability to collect, work with, and clean a data set.

###Prerequisite and assumptions
The script was developed and tested in R Studio Version 0.98.1091. Only base R package functions are used in this script.
R version 3.1.2 (2014-10-31) -- "Pumpkin Helmet"
Copyright (C) 2014 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

###The instruction list/script
1. Download the zip file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip into you R working directory.
2. Unzip the zip-file. There must be "getdata-projectfiles-UCI HAR Dataset" folder with subfolders (test & train) and some txt files.
3. Download R script file called "run_analysis.R" and copy it to the working directory.
4. Execute this script in R session (use R-command "source("run_analysis.R")"). The script will create "result.txt" file.
You can read the data of this file by R-command "read.table("result.txt", as.is = TRUE, header = TRUE)". You can use various commands to view data, for example str(), head(), summary() and so on.
Data description you can find in CodeBook.md file.

###Additional information
You can obtain the full tidy data set (before aggregation) if you uncomment line #85. Then the script will create "full.txt" file.