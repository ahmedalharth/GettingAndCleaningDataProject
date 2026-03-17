# CodeBook

## Data Source
The data comes from the UCI Machine Learning Repository:  
Human Activity Recognition Using Smartphones Dataset.  
Collected from accelerometers in Samsung Galaxy S smartphones.

## Variables
- **Subject**: Identifier for the subject (integer 1–30).
- **Activity**: The activity performed (e.g., WALKING, SITTING, LAYING).
- **Measurements**: Mean and standard deviation values for various sensor signals.

Examples of measurement variables:
- `tBodyAcc-mean()-X`
- `tBodyAcc-mean()-Y`
- `tBodyAcc-std()-Z`
- `tGravityAcc-mean()-X`
- `tBodyGyro-std()-Y`
(and many more…)

## Transformations
1. **Merged** training and test datasets.
2. **Extracted** only mean and standard deviation measurements using regex.
3. **Applied descriptive activity names** from `activity_labels.txt`.
4. **Renamed variables** to be more descriptive (removed special characters, clarified names).
5. **Created tidy dataset** with averages of each variable grouped by subject and activity.

## Output
- **tidyData.txt**: Each row represents one subject/activity combination.  
- Each column contains the average of a measurement variable for that subject/activity.
