# GettingAndCleaningDataProject

## Overview
This repository contains the submission for the Coursera "Getting and Cleaning Data" course project.  
The purpose is to demonstrate the ability to collect, work with, and clean a data set. The final output is a tidy dataset that can be used for later analysis.

## Files in this Repo
- **run_analysis.R**: R script that performs the data cleaning and tidying steps.
- **tidyData.txt**: The final tidy dataset (average of each variable for each activity and each subject).
- **CodeBook.md**: Describes the variables, data, and transformations performed.
- **README.md**: Explains how the scripts work and how they are connected.

## How the Script Works
1. **Merges** the training and test sets to create one dataset.
2. **Extracts** only the measurements on the mean and standard deviation for each measurement.
3. **Uses descriptive activity names** to name the activities in the dataset.
4. **Labels** the dataset with descriptive variable names.
5. **Creates a second tidy dataset** with the average of each variable for each activity and each subject.

## Running the Script
- Place the Samsung data (`UCI HAR Dataset`) in your working directory.
- Run the script `run_analysis.R`.
- The script will output `tidyData.txt` in the working directory.
