# Predicting Placements for Engineering Students

![headerpic.jpg](https://github.com/connorfarrell7/Predicting_Placements_for_Engineering_Students/blob/nyoung/headerpic.jpg)

## Group 4 Capstone Project

Collaborators:
- Nicole Young
- Akif Eltahir
- Regina Enrile
- Mohamed Metwalli
- Connor Farrell

### Goal Summary

Our plan is to build a Machine Learning model to predict whether a person will be selected for an internship based on several factors. 

### Reason For Selecting This Topic 
When students are in the beginning of their career it is a challenging time for them to gain the experience needed to put them in the work force. Understanding the data available from career services in colleges and universities will help these organizations in supporting the students to land in their dream job. Our success in developing such a model will enhance student experience and provide each one with the right guidance to start a career of their choice.

### Data Source

The data was sourced from Kaggle from an [Engineering Placement dataset](https://github.com/connorfarrell7/Predicting_Placements_for_Engineering_Students/blob/main/Dataset/collegePlace.csv) which features the following relevant factors below.

#### Relevant factors include:

- Age
- Gender
- Field of Study
- Past Internships
- Cumulative Grade Point Average (CGPA)
- Dwelling Provided
- History of Backlogs


### Machine Learning Model

**Machine Learning Model Type:** Classification model

Utilizing the above features from the dataset, we are going to train a classification model - a subcategory of Supervised Machine Learning – to determine the likelihood of acceptance for future applicants. The following are the steps taken when building the [machine learning model]( https://github.com/connorfarrell7/Predicting_Placements_for_Engineering_Students/blob/main/Database%20and%20Machine%20Learning/predicting_placements_for_engineering_students.ipynb).

**Step 1:** Loading Dataset

-	Import libraries for pre-processing such as Pandas, tensorflow and sklearn

-	Import and read dataset

**Step 2:** Cleaning Data

-	Load data into Pandas

-	Check for Null and Na values

-	Drop unused columns/features

-	Identify data types and ensure all data types are integer data types

**Step 3:** Prepare Feature Engineering

- Identify data that will be used for training and testing the machine learning model

-	Split our preprocessed data into our features and target arrays

-	Split the preprocessed data into a training and testing dataset

-	Standardize the data with StandardScaler from sklearn

**Step 4:** Exploring Data

-	Finding mean age of students and which ages are more likely to be placed for an internship

-	Finding total number of males and females and which are more likely to be placed for an internship

-	Finding which stream will more likely be placed for and internship

-	Finding the mean GPA that is more considered to be placed for an internship

-	Finding whether incomplete schoolwork will affect the student’s chance of being placed for an internship

**Step 5:** Machine Learning Model

-	Create the SVM model, and train and evaluate the model

-	Display the confusion matrix

-	Create and train the Decision Tree Model

-	Define the model

- Create a callback that saves the model's weights every epoch

-	Display the balanced accuracy score of 87.54%


### Database Integration

We will use PostgresSQL to host data from tables containing [students' demographic information](https://github.com/connorfarrell7/Predicting_Placements_for_Engineering_Students/blob/main/Dataset/student_information.csv) (ID, Age, Gender, Stream) and the parameters used to predict the probability of obtaining an [engineering placement](https://github.com/connorfarrell7/Predicting_Placements_for_Engineering_Students/blob/main/Dataset/student_predictors.csv) (ID, CGPA, Past Internships, Hostel Stay, History of Backlogs). Using the [ERD](https://github.com/connorfarrell7/Predicting_Placements_for_Engineering_Students/blob/main/Dataset/College_Placement_ERD.png) and [SQL Code](https://github.com/connorfarrell7/Predicting_Placements_for_Engineering_Students/blob/main/Database%20and%20Machine%20Learning/collegePlace.sql), we will join these tables and export the data as a [csv file](https://github.com/connorfarrell7/Predicting_Placements_for_Engineering_Students/blob/main/Dataset/collegePlace.csv). 

The database was setup on AWS RDS service. The server’s name is capstone-project, and the connection details are shared with the rest of the team members. The table was populated with the data, and it is ready to be loaded into the machine learning model to predict the student placement outcome.  

### Description of Interactive Elements

[Dashboard](https://public.tableau.com/app/profile/connor.farrell6390/viz/PredictingPlacementsforEngineeringStudents/Dashboard1)

We have chosen to use Tableau to create the final dashboard. This is because Tableau is a powerful interactive visualization tool that helps simplify the dataset into understandable format when presenting. The below visualizations were created to show which criterias were mostly required for the student to be placed for an internship or not.

#### 1st Interactive Element:

Our first interactive element is a scatter plot that shows the amount of internship placements based on the applicant’s Cumulative Grade Point Average.

![1IE](https://github.com/connorfarrell7/Predicting_Placements_for_Engineering_Students/blob/main/Dashboard/1IE.PNG)

#### 2nd Interactive Element:

Our second graph shows the amount of applicants that were either placed or not solely by their gender

![2IE](https://github.com/connorfarrell7/Predicting_Placements_for_Engineering_Students/blob/main/Dashboard/2IE.PNG)

#### 3rd Interactive Element:

The third visualization shows the number of placements by an applicant’s field of study, and then split by gender

![3IE](https://github.com/connorfarrell7/Predicting_Placements_for_Engineering_Students/blob/main/Dashboard/3IE.PNG)
