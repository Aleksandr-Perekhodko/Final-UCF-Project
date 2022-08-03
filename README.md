# Final-UCF-Project

## Data Cleaning
We analyzed the data and used the isna() function in python to discover some columns with a high number of N/A's
These columns were: 'Alley', 'Fence', 'FireplaceQu', 'LotFrontage', 'MiscFeature', 'PoolQC'. This resulted in a total of 75 columns.

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


