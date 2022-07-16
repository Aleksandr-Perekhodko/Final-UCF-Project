# Final-UCF-Project

## Data Cleaning
I searched for columns that were literred with values of NA and 0's. Those columns with a large amount of both NA values and '0' were dropped. 

These columns were: 'Alley', 'Fence', 'FireplaceQu', 'LotFrontage', 'MiscFeature', 'PoolQC', 'MasVnrArea', 'BsmtFinSF2',  'LowQualFinSF', 'BsmtHalfBath', 'EnclosedPorch', '3SsnPorch', 'ScreenPorch', 'PoolArea', and 'MiscVal'. This resulted in a total of 67 columns.

## Database Creation and Storage
I decided to connect Pandas and SQL with the sqlalchemy module. Using the cleaned data, I created a database on pgAdmin to the local server. 

![image](https://user-images.githubusercontent.com/98003050/179372344-dfe30bf0-9d5b-4c4d-b885-cea98cbf932e.png)

![image](https://user-images.githubusercontent.com/98003050/179372358-5d582f0c-5237-4c1b-8b24-e5d189540648.png)


![image](https://user-images.githubusercontent.com/98003050/179372353-7ba2ca14-3a07-4da7-9000-ffb0d1c1b4aa.png)



