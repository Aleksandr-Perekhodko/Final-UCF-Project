#UCF-Final_Project

The purpose of our analysis is to examine real estate trends and data in Ames, Iowa to determine if we can accurately predict the final price for each home in our data set. In order to do so, we'll employ a variety of techniques, including data extraction and cleaning, using a NoSQL Database to store our data, and performing Primary Component Analysis(PCA) to ready the data for a machine learning model before finally presenting our findings in Tableau (or other visualization applications).

[(Link to dashboard)](https://public.tableau.com/app/profile/aleksandr.perekhodko/viz/RealEstateCorrelations/RealEstateCorrelations)


[(Link to Google Slides Presentation)](https://docs.google.com/presentation/d/1VwEZyC6pBC5Pwj5bFC3liypyu1cbTUzve8bMaWpbejA/edit#slide=id.p)

Additionally, we’ll be asking the following questions of our data:

- Is it possible to accurately predict housing prices based on the given data alone?
- If housing prices are expected to rise, how much would the average price increase be? 
- Are there any outliers in our data? And if so, how should we treat them?
- Are there any other factors that haven't been considered in our analysis?

# Methodology

Following the roadmap we'll assign tasks accordingly. 

<img width="1154" alt="Screen Shot 2022-07-13 at 5 02 06 PM" src="https://user-images.githubusercontent.com/99847786/178833680-ab922408-af08-4250-a1a4-6340a1039513.png">

## Database Creation and Storage
We decided to connect Pandas and SQL with the sqlalchemy module. Using the cleaned data, we created a database on pgAdmin to the local server. 

### Schema
Four tables were created to serve as the basis behind the visualizations. 
* Avg_Price_to_SqFt shows the relationship between the square footage of a home to the average sale price of that home
* Avg_Price_to_Garage displays the quality and type of garages in the data set and how that relates  the average sale price of a home with specified garage parameters

![image](https://user-images.githubusercontent.com/98003050/182724066-28cd6198-c175-4a76-8621-8f966781779f.png)
![image](https://user-images.githubusercontent.com/98003050/182724273-6a89d31f-eca9-4162-92d9-56179535549b.png)

* Qual_to_AvgSqFt_Price explains the relationship between the overall quality of a home (ranked from 0-10) and the average price per sqft of a home within the overall quality ranking
* Avg_price_sqft_qual joins the two tables Qual_to_AvgSqFt_Price and Avg_Price_to_SqFt


A screenshot of the schema is seen below, along with the erd 
![image](https://user-images.githubusercontent.com/98003050/182723795-5add0b2a-52fd-4c74-818b-c23b3f649624.png)

![QuickDBD-export](https://user-images.githubusercontent.com/98003050/182724589-9a1707af-50b9-418b-878e-84742bca0226.png)


## Machine Learning Model

Once the data has been cleaned, we'll standardize it and use it as a base for our machine learning model. We'll then separate the data into training and testing sets before finally applying a Machine Learning Model (Which will be used?)

## Dashboard

We'll use Tableau to create several visualizations to support our analysis for the time being, but this could change as the project progresses.

> - **Visual One:** Price by Overall Quality with Count


 The first visual shows the *Sale Price* of each home sorted by median price, and each house's *Overall Quality*. The color of each shape is determined by the *Sale Price* from red meaning the lowest sale price to green meaning the highest. The size of each shape in the scatter plot is determined by the count of the *Sale Price*, which means the smaller the size of the shape, the smaller the count of *Sale Price* data sets that are in the *Overall Quality* data sets; for example, the first point only has a count of 2 at the data point *Sale Price* 50k and *Overall Quality* 1.0. The numbers underneath the shapes in the plot show the median *Sale Price*, the median *Overall Quality*, and count of the *Sale Price*.


![Real Estate Correlations 1](https://user-images.githubusercontent.com/97326526/182004056-29026907-b373-4ee2-b799-3dc370156193.jpeg)

> - **Visual Two:** Price to Square Foot


 This visual contains a line graph that shows the *Gr Liv Area* which is the ground square footage of the home compared to the average *Sale Price* for the homes in our dataset. As seen on the graph, as the square footage increases the home price also tends to increase, and we can also see that in this graph there does seem to be an outlier somewhere in the range of 4800 to 5600 as the price has decreased a significant amount. This outlier may be due to quality of the home, the way the home was sold (ex. the price might have changed due to a foreclosure, damage, etc.), or some other factor. 


![Real Estate Correlations 2](https://user-images.githubusercontent.com/97326526/182004058-b9a8c63c-bb1b-4dc7-9446-8fe5c5c5f295.jpeg)


>- **Visual Three:** Average Price of Home with Full Bathroom


The third visual shows a pie chart that compares the *Full Bath* data set with the *Sale Price* data set. The pie chart color for each angle represents the amount of full bathrooms each property has, where red represents 0 full bathrooms, light blue 1, dark blue 2, and turquoise 3. The size of each angle is represented by *Sale Price*; the larger the size of each angle of the pie chart, the greater the average price is for that section of the *Full Bath* data set. Each angle has 3 labels - the top representing the average *Sale Price* for each house by number of bathrooms, the middle for the number of  full bahrooms per house (*Full Bath*), and the bottom is the count of houses by *Sale Price*.


![Real Estate Correlations 3](https://user-images.githubusercontent.com/97326526/182004079-18477e76-a3d2-498a-a95e-0cddcbed6727.jpeg)

> - **Visual Four:** Basement Price of Size and Condition


The below visual is a dashboard that contains 2 different charts, demonstrating the relationship between basement size and condition, and the final sale price of the home.  The chart on the left compares the total square footage (*Total Bsmt SF*) of the basement of each house and the *Sale Price* (located on the Y axis).  There are 2 labels added to each point in the area chart, the top label for each point has the average *Sale Price*, and the bottom label contains the *Total Bsmt SF* for each point. The area chart indicates that, as the total basement square footage increases the average sale prices of the home also increases. Again, some points do tend to have a significant decrease in price as the basement square footage increases which may indicate that there are some higher square footage homes that are lower in cost due to another factor, such as sale condition being a foreclosure, the year the home was built, quality of the home, or neighborhood the home is located in.


The scatter plot to the right shows the basement price based on the condition of the basement. Here, NA means that there is no basement at all, Po stands for poor condition which might mean that there is severe cracking, settling, or wetness. Next, Fa, or Fair, means that there is some dampness, or some cracking or settling, followed by Ta, or typical, which means slight dampness, and finally Gd which stands for good; i.e. the highest quality - no dampness, cracking, or settling. The X axis shows the *Bsmt Cond* feature (which is the basement condition) , and the Y axis shows the average *Sale Price*. Each diamond's color represents the *Bsmt Cond* where red means NA, orange Po, light green Fa, green Ta, and dark green Gd. The size of each of the shapes is determined by how high the average prices are based on each of the conditions. The scatter plot shows that the worse the condition the basement is, the lower the price of each house will be. The NA is higher since there are homes without a basement that average around the middle and because there could be many homes without a basement that are still priced pretty well, if a basement is in poor condition that could also mean that the home could be of lower quality.


![Real Estate Correlations 4](https://user-images.githubusercontent.com/97326526/182004086-4388ada2-8d9f-43f1-9c01-8b0dcdf8cbe9.jpeg)

> - **Visual Five:** Garage Quality and Type Sell Price


The following visual is a highlighted table that contains the *Garage Qual* feature which represents the quality of the garage, and uses a scale where Ex is excellent, Gd is good, TA is typical or average, Fa is fair, Po is poor, and NA means not applicable (no garage). Then the next data point used in the chart is *Garage Type*, which has data regarding 7 different types of garages. The first being BuiltIn, followed by Detachd garage (meaning the garage is not attached to the home), followed by Attachd (attached). Next, we have 2Types which means that there is more than one type of garage, following that, there is the Basement type which means that it is a basement garage. The final two types of garages are the CarPort, and NA meaning no garage. The final datapoint used is the average *Sale Price*. The column has the *Garage Qual*, and row contains *Garage Type*. The colors of each of the squares shows the average *Sale Price* where the red represents the lowest average sales price and the dark green indicates the highest average price. Each box has a label inside - these are the average *Sale Price* of the homes with the garage quality and type. We can see that a built in garage with a typical quality or a good quality will go for the highest amount. The chart also appears to show that many people seem to have a detached garage - they tend to be the most common since there is more data on average price and condition for the detached garage type.


![Real Estate Correlations 5](https://user-images.githubusercontent.com/97326526/182004098-e03f31cd-8517-43c8-ab79-1683658443a2.jpeg)

> - **Visual Six:** Price by Year Built


The following visual shows a packed bubble chart, based on the *Year Remod Add* data set which contains information about the year when the home was remodeled - but if the house was never remodeled it will show the year when the home was first built. The bubble chart is labeled by the *Year Remod Add*, and *Sale Price*. The color of the bubbles is based on the *Sale Price* data set with a scale that starts with red (meaning the lowest price) to green (meaning the highest price). The bubbles are also porpotional to the *Sale Price*, - in other words, the greater the size of the bubble the greater the price of the property.


![Real Estate Correlations 6](https://user-images.githubusercontent.com/97326526/182004116-ebde2305-bf8e-4435-bd18-6013c7535d1d.jpeg)

> - **Visual Seven:** Neighborhood Quality and Average Sale Price of Homes with Sale Conditon


The below dashboard contains our final visual -  on the left is a square chart that has our *Neighborhood* data points.  The colors of each square in the  chart represent the price by average *Overall Qual*, where dark red represents the lowest price and dark green the highest price. The square chart is labeled by the average *Overall Qual*, where 8.2 is the highest and 4.4 represents the lowest quality houses. In the chart it seems that the  neighborhoods with the highest quality houses seem to be NridgHt, which is Northridge Heights, and StoneBr, which is Stone Brook. The neighborhoods with the lowest quality houses are MeadowV, which is Meadow Village with an average of 4.4, and IDOTRR, which is the area around the Iowa DOT and Rail Road,  with a quality rating of 4.7.


The  visual on the right side also contains a square chart which shows *Sale Condition* - in other words, how the land was sold. The first data point in *Sale Condition* is Abnormal which means the sale was abnormal - it was either traded, foreclosed on, or closed on a short sale. Then there is AdjLand which means it was an adjoining land purchase. Next, there is a condition called Alloca which is allocation - meaning two linked properties with separate deeds, generally condos with a garage unit. Family is a sale between family members, normal is a normal sale, and partial is a home that was not completed when last assessed (associated with new homes). The colors and labels both comprise average *Sale Price*; here, the colors associated with average *Sale Price* are color coded from red to gold, with red being the lowest price to gold being the highest price. From the chart to the right we can determine that the lowest priced homes sold are adjoined lands and abnormal purchases such as foreclosures. The two highest land purchases are partial purchases which is to be expected, since the partial purchases are essentially new homes, and the next highest sold homes are normal purchases.


![Real Estate Correlations 7](https://user-images.githubusercontent.com/97326526/182004119-5daab8d3-ae1e-48ea-a56a-d36299ce4680.jpeg)

# Summary of Results

(To be completed once the analysis has been performed)

## List of Technologies Used

- Scikit-learn 

(additional modules will be added later)
