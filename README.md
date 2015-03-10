# GCD_CourseProject
1. Download the zip file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip into you R working directory.
2. Unzip the zip-file. There must be "getdata-projectfiles-UCI HAR Dataset" folder with subfolders (test & train) and some txt files.
3. Download R script file called "run_analysis.R".
4. Execute this script in R session (use R-command "source("run_analysis.R")"). The script will create "result.txt" file.
You can read the data of this file by R-command "read.table("result.txt", as.is = TRUE, header = TRUE)". You can use various commands to view data, for example str(), head(), summary() and so on.
Data description you can find in CodeBook.md file.
