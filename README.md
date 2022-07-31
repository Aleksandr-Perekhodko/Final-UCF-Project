# Final-UCF-Project

The purpose of our analysis is to examine real estate trends and data in Ames, Iowa to determine if we can accurately predict the final price for each home in our data set. In order to do so, we'll employ a variety of techniques, including data extraction and cleaning, using a NoSQL Database to store our data, and performing Primary Component Analysis(PCA) to ready the data for a machine learning model before finally presenting our findings in Tableau (or other visualization applications).

[(Link to dashboard)](https://public.tableau.com/app/profile/aleksandr.perekhodko/viz/RealEstateCorrelations/RealEstateCorrelations) (These can be moved at any time)
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

> - **Visual One:** Price by Overall Quality with Count


 The first visual shows the *Sale Price* of the home sorted by median price, with each houses *Overall Quality*. The color of each shape is determined by the *Sale Price* from red meaning the lowest to green meaning the highest. The size of the shape for the scatter plot is determined by the count of the *Sale Price*, which means the smaller the size of the shape, there is a smaller count amount of *Sale Price* data sets that are in the *Overall Quality* data sets for example the first point only has 2 *Sale Price* in *Overall Quality* of 1. The numbers underneath the shapes in the plot show the median *Sale Price*, the median *Overall Quality*, and count of the *Sale Price*.


![Real Estate Correlations 1](https://user-images.githubusercontent.com/97326526/182004056-29026907-b373-4ee2-b799-3dc370156193.jpeg)

> - **Visual Two:** Price to Square Foot


 The visual show a line graph that shows the *Gr Liv Area* which is the ground square footage of the home comparing to the average *Sale Price* for homes. As seen on the graph as the square footage increases the home price also tends to increase, we can also see that in this graph there does seem to be an outlier in the ranges of 4800 to 5600 as the price has decreased a significant amount. This is either an outlier because of the quality of the home, the way the home was sold maybe due to a foreclosure, or a different reason.


![Real Estate Correlations 2](https://user-images.githubusercontent.com/97326526/182004058-b9a8c63c-bb1b-4dc7-9446-8fe5c5c5f295.jpeg)


>- **Visual Three:** Average Price of Home with Full Bathroom


The third visual contains a pie chart that will contain the *Full Bath* data set with *Sale Price* data set. The pie chart color for each angle represents the amount of full bathrooms each property has, red meaning 0, light blue meaning 1, darker blue 2, and 3 meaning 3. Each angle size is represented by *Sale Price*, the larger the size of each angle of the pie chart the greater the average price is for that amount of the *Full Bath* data set is. Each angle has 3 labels near, the top representing average *Sale Price*, the middle stands for *Full Bath* amount, and the bottom is the count of *Sale Price*.


![Real Estate Correlations 3](https://user-images.githubusercontent.com/97326526/182004079-18477e76-a3d2-498a-a95e-0cddcbed6727.jpeg)

> - **Visual Four:** Basement Price of Size and Condition


This fourth visual is a dashboard that contains 2 different charts the first is the area chart on the left. The column contains *Total Bsmt SF* which is the total square footage of the basement. The row contains the average *Sale Price*. The color of the area chart is set to green and is marked under *Total Bsmt SF* but is just set to green and does not change from lowest to highest. There are 2 labels added to each point in the area chart, the top label for each point has the average *Sale Price*, and the bottom label contains the *Total Bsmt SF* for each point. The area chart does show that as the total basement square footage increases the average sale prices of the home also has an increase. There are again some points that do tend to have a significant decrease in price as the basement square footage increases which may indicate that there are some higher square footage homes that are lower in cost due to another reason, such as sale condition being a foreclosure, the year the home was built, quality of the home, or neighborhood the home is located in.


The scatter plot to the right shows the basement price based on condition of the basement. NA meaning no basement at all, Po stands poor which means that there is severe cracking, settling, or wetness. The next basement condition is Fa or Fair means that there is some dampness, or some cracking or settling, then Ta or typical which means slight dampness, and finally Gd which means good the highest quality no dampness, cracking, or settling. The column shows the *Bsmt Cond* which is the basement condition , and the row shows the average *Sale Price*. The each diamond color represents the *Bsmt Cond* red meaning NA, orange being Po, light green being Fa, TA being green, and Gd being dark green. The sized of each of the shapes is determined by how high the average prices are for each of the conditions. The scatter plot shows that the lower the condition the basement is the lower the price of each house will be. The NA is higher since there are home that are average around the middle without a basement because there could be many homes without a basement that are still priced pretty well, and if a basement is in poor condition that could also mean that the home could be a lower quality.


![Real Estate Correlations 4](https://user-images.githubusercontent.com/97326526/182004086-4388ada2-8d9f-43f1-9c01-8b0dcdf8cbe9.jpeg)

> - **Visual Five:** Garage Quality and Type Sell Price


The following visual is a highlighted table that contains *Garage Qual* which means the quality of the garage, and used Ex as excellent, Gd as good, TA as typical or average, Fa as fair, Po as poor, and NA means no garage. Then the next data point used in the chart is *Garage Type* this has 7 types of garages. The first being BuiltIn which means that the garage has been built into the home typically there is a room above the garage. The next garage type is the Detchd garage meaning the garage is not attached to the home and is its own separate building, then there is the Attachd which mean the garage is attached to the home. 2Types means that there is more than one type of garage, then there is the Basement type which means that it is a basement garage. The final two types of garages are the CarPort which is a car port, and NA meaning no garage. The final datapoint used is the average *Sale Price*. The column has the *Garage Qual*, and row contains *Garage Type*. The colors of each of the squares is to show average *Sale Price* so the red showing the lowest amount and the dark green to show the highest average price. Each box has a label inside, these are the average *Sale Price* of the homes with that garage quality and type. We can see that a built in garage with a typical quality or a good quality will go for the highest amount. The chart also shows that there seems to be many people has detached garage are very common since there seems to be more data on average price and condition for the detached garage type.


![Real Estate Correlations 5](https://user-images.githubusercontent.com/97326526/182004098-e03f31cd-8517-43c8-ab79-1683658443a2.jpeg)

> - **Visual Six:** Price by Year Built


The following visual shows packed bubbles, the packed bubbles has the *Year Remod Add* data set which has the year when the home was remodeled but if the house was never remodeled it will default to when the home was first built. The bubbles show a label of *Year Remod Add*, and a label for *Sale Price*. The color of the bubbles is the *Sale Price* data set which go from red meaning the lowest price to green meaning the highest price. The packed bubbles are also a larger size depending on the *Sale Price*, the greater the size of the bubble is also means the greater the price of the property.


![Real Estate Correlations 6](https://user-images.githubusercontent.com/97326526/182004116-ebde2305-bf8e-4435-bd18-6013c7535d1d.jpeg)

> - **Visual Seven:** Neighborhood Quality and Average Sale Price of Homes with Sale Conditon


The first visual that is on the left is a square chart that has *Neighborhood* data point that is in the part of the rows and the colors of each square chart represents the average *Overall Qual*, dark red being the lowest price and dark green being the highest price, The labels inside the square chart is the average*Overall Qual*, 8.2 being the highest and 4.4 being the lowest quality houses. In the chart it seems that the highest quality neighborhoods seems to be NridgHt which is Northridge Heights and StoneBr which is Stone Brook. The lowest quality houses from the neighborhoods are MeadowV which is Meadow Village with 4.4, and IDOTRR which is called Iowa DOT and Rail Road with a quality rating of 4.7.


The final visual which is on the right side contains a square chart that how *Sale Condition* in the rows which explains how the land was sold. The first data point in *Sale Condition* is Abnormal which means it was abnormal sale it was either traded, foreclosed on, or a short sale. Then there is AdjLand which means it was a adjoining land purchase. The next point is called Alloca which is allocation which mean two linked properties with separate deeds, typically condo with a garage unit. Family is a sale between family members, normal is a normal sale, and partial is a home was not completed when last assessed(associated with new homes). The colors and labels are both comprised average *Sale Price* the colors associated with average *Sale Price* are marked with going from red to gold red being the lowest price to gold being the highest price. From the chart to the right it seems that the lowest priced homes sold are adjoined lands and abnormal purchases such as foreclosures. The two highest land purchases are partial purchases which make sense since the partial purchases are essentially new homes, and the next highest sold homes are normal purchases.


![Real Estate Correlations 7](https://user-images.githubusercontent.com/97326526/182004119-5daab8d3-ae1e-48ea-a56a-d36299ce4680.jpeg)

# Summary of Results

(To be completed once the analysis has been performed)

## List of Technologies Used

- Scikit-learn 

(additional modules will be added later)
