# Final-UCF-Project

The purpose of our analysis is to examine real estate trends and data in Ames, Iowa to determine if we can accurately predict the final price for each home in our data set. In order to do so, we'll employ a variety of techniques, including data extraction and cleaning, using a NoSQL Database to store our data, and performing Primary Component Analysis(PCA) to ready the data for a machine learning model before finally presenting our findings in Tableau (or other visualization applications).

(Link to dashboard) (These can be moved at any time)
(Link to Google Slides Presentation)

Additionally, we’ll be asking the following questions of our data:

- Is it possible to accurately predict housing prices based on the given data alone?
- If housing prices are expected to rise, how much would the average price increase be? 
- Are there any outliers in our data? And if so, how should we treat them?
- Are there any other factors that haven't been considered in our analysis?

# Methodology

Following the roadmap we'll assign tasks accordingly. 

<img width="1154" alt="Screen Shot 2022-07-13 at 5 02 06 PM" src="https://user-images.githubusercontent.com/99847786/178833680-ab922408-af08-4250-a1a4-6340a1039513.png">

## Database

For this analysis, we used a PostGresSQL database to hold our raw data. We then used data cleaning techniques to prepare the data to be inserted into a machine learning model. We did so by connecting Pandas and SQL with the sqlalchemy module, and storing the data on a local server. 

The images below show the final database on the local server, and the data we'll use for our machine learning models.

![image](https://user-images.githubusercontent.com/99847786/179373423-2667bb74-e87e-4872-891d-d4b3540e0889.png)

![image](https://user-images.githubusercontent.com/99847786/179373427-31d24ab8-ea0b-4314-8738-2259d8f79ba3.png)

![image](https://user-images.githubusercontent.com/99847786/179373431-d4864b5d-9182-40b6-840c-597eac20dc02.png)


## Machine Learning Model

Once the data has been cleaned, we'll standardize it and use it as a base for our machine learning model. We'll then separate the data into training and testing sets before finally applying a Machine Learning Model (Which will be used?)

## Dashboard

We'll use Tableau to create several visualizations to support our analysis for the time being, but this could change as the project progresses. 

# Summary of Results

(To be completed once the analysis has been performed)

## List of Technologies Used

- Scikit-learn 
- TensorFlow
- Tableau
- SQL

(additional modules will be added later)
