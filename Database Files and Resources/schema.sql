SELECT * FROM new_clean_housing_data
LIMIT 100;


CREATE TABLE Avg_Price_to_SqFt AS
	SELECT "Id", "GrLivArea" as "Sq_Footage", AVG("SalePrice")::NUMERIC(10,2) as "AvgSalePrice"
	FROM new_clean_housing_data
	GROUP BY "Id", "Sq_Footage"
	ORDER BY "Sq_Footage";


CREATE TABLE Avg_Price_to_Garage AS
	SELECT "GarageType" || ', ' || "GarageQual" as "type_quality", AVG("SalePrice")::NUMERIC(10,2) as "AvgSalePrice"
	FROM new_clean_housing_data
	GROUP BY "GarageType", "GarageQual"
	ORDER BY "GarageType", "GarageQual";


CREATE TABLE Qual_to_AvgSqFt_Price AS
	SELECT "Id", "OverallQual", AVG("SalePrice")::NUMERIC(10,2) / "GrLivArea" as "Average Price/SqFt"
	FROM new_clean_housing_data
	GROUP BY "Id", "GrLivArea", "OverallQual"
	ORDER BY "GrLivArea"


CREATE TABLE avg_price_sqft_qual AS
	SELECT Avg_Price_to_SqFt."Id", 
		Avg_Price_to_SqFt."Sq_Footage", 
		Avg_Price_to_SqFt."AvgSalePrice", 
		Qual_to_AvgSqFt_Price."OverallQual", 
		Qual_to_AvgSqFt_Price."Average Price/SqFt"
	FROM Avg_Price_to_SqFt 
	RIGHT JOIN Qual_to_AvgSqFt_Price ON Avg_Price_to_SqFt."Id" = Qual_to_AvgSqFt_Price."Id"
	
	

