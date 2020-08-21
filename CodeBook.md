---
title: "CodeBook - Getting And Cleaning Data Course Project"
author: "Kevin Beauchemin"
date: "8/20/2020"
output: html_document
---
## Use
The run_analysis.R script assumes that the UCI HAR Dataset folder is in the working directory. The output of the script is a .txt file called "analysisOutput.txt", which is written to the working directory.

## Initial Data
This project utilizes data from the UCI "Human Activity Using Smarphones Data Set".

### Description
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### Source
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

## Output
The output of run_analysis.R is a tidy data set based upon a subset of the original data. Specifically,
the file merges the test and training data into a single data set and extracts the measurements on the mean
and standard devation for each measurement. Labels for the data set are assigned utilzing the "features.txt" file, and the subject ID for each row is extracted from the "subject_train.txt" and "subject_test.txt" files for training and test data sets respectively. Further, the 6 experiment activities are converted from integer values to descriptive activity names (character vectors) utilizing the legend contained in "activity_labels.txt". The function then creates a second, independent data set with the average of each of the extracted variables for each of the 6 experiment activities by each of the 30 subjects.

Specific manipulations and coversions are identified through comments embedded within the "run_analysis.R" script.

### Average By Subject Activity - analysisOutput.txt
The Average By Subject Activity - analysisOutput.txt file contains 68 fields. It provides the average of the mean and standard deviation measurements on each of the original dataset entries contained in the test and training data for each subject by activity.

1. SubjectID: integer Identifies which of the 30 subjects performed the activity
2. Activity: char Lists the activity performed by the subject 
    i) WALKING 
    ii) WALKING_UPSTAIRS
    iii) WALKING_DOWNSTAIRS
    iv) SITTING
    v) STANDING
    vi) LAYING
3. avg_tBodyAcc-mean()-X: double The average of the mean of the time domain measurements from the body accelerometer signals along the X-axis
4. avg_tBodyAcc-mean()-Y: double The average of the mean of the time domain measurements from the body accelerometer signals along the Y-axis
5. avg_tBodyAcc-mean()-Z: double The average of the mean of the time domain measurements from the body accelerometer signals along the Z-axis
6. avg_tGravityAcc-mean()-X: double The average of the mean of the time domain measurements from the gravity accelerometer signals along the X-axis
7. avg_tGravityAcc-mean()-Y: double The average of the mean of the time domain measurements from the gravity accelerometer signals along the Y-axis
8. avg_tGravityAcc-mean()-Z: double The average of the mean of the time domain measurements from the gravity accelerometer signals along the Z-axis
9. avg_tBodyAccJerk-mean()-X: double The average of the mean of the Jerk measurements from the body accelerometer signals along the X-axis
10. avg_tBodyAccJerk-mean()-Y: double The average of the mean of the Jerk measurements from the body accelerometer signals along the Y-axis
11. avg_tBodyAccJerk-mean()-Z: double The average of the mean of the Jerk measurements from the body accelerometer signals along the Z-axis
12. avg_tBodyGyro-mean()-X: double The average of the mean of the time domain measurements from the body gyroscope signals along the X-axis
13. avg_tBodyGyro-mean()-Y: double The average of the mean of the time domain measurements from the body gyroscope signals along the Y-axis
14. avg_tBodyGyro-mean()-Z: double The average of the mean of the time domain measurements from the body gyroscope signals along the Z-axis
15. avg_tBodyGyroJerk-mean()-X: double The average of the mean of the Jerk measurements from the body gyroscope signals along the X-axis
16. avg_tBodyGyroJerk-mean()-Y: double The average of the mean of the Jerk measurements from the body gyroscope signals along the Y-axis
17. avg_tBodyGyroJerk-mean()-Z: double The average of the mean of the Jerk measurements from the body gyroscope signals along the Z-axis
18. avg_tBodyAccMag-mean(): double The average of the mean of the 3-D magnitude of the measurements from body accelerometer signals
19. avg_tGravityAccMag-mean(): double The average of the mean of the 3-D magnitude of the measurements from gravity accelerometer signals
20. avg_tBodyAccJerkMag-mean(): double The average of the mean of the 3-D magnitude of the Jerk measurements from body accelerometer signals
21. avg_tBodyGyroMag-mean(): double The average of the mean of the 3-D magnitude of the measurements from body gyroscope signals
22. avg_tBodyGyroJerkMag-mean(): double The average of the mean of the 3-D magnitude of the Jerk measurements from body gyroscope signals
23. avg_fBodyAcc-mean()-X: double The average of the mean of the Fast Fourier Transform of the body accelerometer signals along the X-axis
24. avg_fBodyAcc-mean()-Y: double The average of the mean of the Fast Fourier Transform of the body accelerometer signals along the Y-axis
25. avg_fBodyAcc-mean()-Z: double The average of the mean of the Fast Fourier Transform of the body accelerometer signals along the Z-axis
26. avg_fBodyAccJerk-mean()-X: double The average of the mean of the Fast Fourier Transform of the body jerk measurement from accelerometer signals along the X-axis
27. avg_fBodyAccJerk-mean()-Y: double The average of the mean of the Fast Fourier Transform of the body jerk measurement from accelerometer signals along the Y-axis
28. avg_fBodyAccJerk-mean()-Z: double The average of the mean of the Fast Fourier Transform of the body jerk measurement from accelerometer signals along the Z-axis
29. avg_fBodyGyro-mean()-X: double The average of the mean of the Fast Fourier Transform of measurements from the body gyroscope signals along the X-axis
30. avg_fBodyGyro-mean()-Y: double The average of the mean of the Fast Fourier Transform of measurements from the body gyroscope signals along the Y-axis
31. avg_fBodyGyro-mean()-Z: double The average of the mean of the Fast Fourier Transform of measurements from the body gyroscope signals along the Y-axis
32. avg_fBodyAccMag-mean(): double The average of the mean of the FFT of the 3-D magnitude of the measurements from body accelerometer signals
33. avg_fBodyBodyAccJerkMag-mean(): double The average of the mean of the FFT of the 3-D magnitude of the jerk measurements from body accelerometer signals
34. avg_fBodyBodyGyroMag-mean(): double The average of the mean of the FFT of the 3-D magnitude of the measurements from body gyroscope signals
35. avg_fBodyBodyGyroJerkMag-mean(): double The average of the mean of the FFT of the 3-D magnitude of the jerk measurements from body gyroscope signals
36. avg_tBodyAcc-std()-X: double The average of the standard deviations of the time domain measurements from the body accelerometer signals along the X-axis 
37. avg_tBodyAcc-std()-Y: double The average of the standard deviations of the time domain measurements from the body accelerometer signals along the Y-axis.
38. avg_tBodyAcc-std()-Z: double The average of the standard deviations of the time domain measurements from the body accelerometer signals along the Z-axis.
39. avg_tGravityAcc-std()-X: double The average of the standard deviations of the time domain measurements from the gravity accelerometer signals along the X-axis
40. avg_tGravityAcc-std()-Y: double The average of the standard deviations of the time domain measurements from the gravity accelerometer signals along the Y-axis
41. avg_tGravityAcc-std()-Z: double The average of the standard deviations of the time domain measurements from the gravity accelerometer signals along the Z-axis
42. avg_tBodyAccJerk-std()-X: double The average of the standard deviations of the Jerk measurements from the body accelerometer signals along the X-axis
43. avg_tBodyAccJerk-std()-Y: double The average of the standard deviations of the Jerk measurements from the body accelerometer signals along the Y-axis
44. avg_tBodyAccJerk-std()-Z: double The average of the standard deviations of the Jerk measurements from the body accelerometer signals along the Z-axis
45. avg_tBodyGyro-std()-X: double The average of the standard deviations of the time domain measurements from the body gyroscope signals along the X-axis
46. avg_tBodyGyro-std()-Y: double The average of the standard deviations of the time domain measurements from the body gyroscope signals along the Y-axis
47. avg_tBodyGyro-std()-Z: double The average of the standard deviations of the time domain measurements from the body gyroscope signals along the Z-axis
48. avg_tBodyGyroJerk-std()-X: double The average of the standard deviations of the Jerk measurements from the body gyroscope signals along the X-axis
49. avg_tBodyGyroJerk-std()-Y: double The average of the standard deviations of the Jerk measurements from the body gyroscope signals along the Y-axis
50. avg_tBodyGyroJerk-std()-Z: double The average of the standard deviations of the Jerk measurements from the body gyroscope signals along the Z-axis
51. avg_tBodyAccMag-std(): double The average of the standard deviations of the 3-D magnitude of the measurements from body accelerometer signals
52. avg_tGravityAccMag-std(): double The average of the standard deviations of the 3-D magnitude of the measurements from gravity accelerometer signals
53. avg_tBodyAccJerkMag-std(): double The average of the standard deviations of the 3-D magnitude of the jerk measurements from body accelerometer signals
54. avg_tBodyGyroMag-std(): double The average of the standard deviations of the 3-D magnitude of the measurements from body gyroscope signals
55. avg_tBodyGyroJerkMag-std(): double The average of the standard deviations of the 3-D magnitude of the jerk measurements from body gyroscope signals
56. avg_fBodyAcc-std()-X: double The average of the standard deviations of the Fast Fourier Transform of the body accelerometer signals along the X-axis
57. avg_fBodyAcc-std()-Y: double The average of the standard deviations of the Fast Fourier Transform of the body accelerometer signals along the Y-axis
58. avg_fBodyAcc-std()-Z: double The average of the standard deviations of the Fast Fourier Transform of the body accelerometer signals along the Z-axis
59. avg_fBodyAccJerk-std()-X: double The average of the standard deviations of the Fast Fourier Transform of the body jerk measurement from accelerometer signals along the X-axis
60. avg_fBodyAccJerk-std()-Y: double The average of the standard deviations of the Fast Fourier Transform of the body jerk measurement from accelerometer signals along the Y-axis
61. avg_fBodyAccJerk-std()-Z: double The average of the standard deviations of the Fast Fourier Transform of the body jerk measurement from accelerometer signals along the Z-axis
62. avg_fBodyGyro-std()-X: double The average of the standard deviations of the Fast Fourier Transform of measurements from the body gyroscope signals along the X-axis
63. avg_fBodyGyro-std()-Y: double The average of the standard deviations of the Fast Fourier Transform of measurements from the body gyroscope signals along the Y-axis
64. avg_fBodyGyro-std()-Z: double The average of the standard deviations of the Fast Fourier Transform of measurements from the body gyroscope signals along the Z-axis
65. avg_fBodyAccMag-std(): double The average of the standard deviations of the FFT of the 3-D magnitude of the measurements from body accelerometer signals
66. avg_fBodyBodyAccJerkMag-std(): double The average of the standard deviations of the FFT of the 3-D magnitude of the jerk measurements from body accelerometer signals
67. avg_fBodyBodyGyroMag-std(): double The average of the standard deviations of the FFT of the 3-D magnitude of the measurements from body gyroscope signals
68. avg_fBodyBodyGyroJerkMag-std(): double The average of the standard deviations of the FFT of the 3-D magnitude of the jerk measurements from body gyroscope signals