# DataCleaning
## Assignment for Getting and Cleaning Data class
The script run_analysis.R loads the data set contained in these source files:

* features.txt
* train/x_train.txt
* train/y_train.txt
* train/subject_train.txt
* test/x_test.txt
* test/y_test.txt
* test/subject_test.txt

Note that the script assumes that features.txt is in the working directory and that the train and test files are in subdirectories under the working directory.
Also, **dplyr** is loaded, so the package needs to available to the R instance.

Each file is read into its own data frame, and then cbind is used to combine the test-related data into one data frame and the train-related data into another.
Next, rbind is used to combine those two data frames into one data frame containing all the results.

This data frame is subsetted to include only the measurement columns that are mean or standard deviations.  
The aggregate function rolls up the data into the mean of each measurement column for each subject/activity combination.
The activity values are converted to factors and names assigned to each factor.
The column names of all the measurement columns are prepended with 'MEAN_' to indicate that each is a mean of the source column.

The final step is to write it as a csv file