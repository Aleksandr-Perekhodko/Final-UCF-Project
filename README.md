# Final-UCF-Project

The purpose of my section of the project is to decide which technologies we'll use. Additionally, I'll write the ReadMe and summarize the results of our two models, and the corresponding statistical and analytical concepts. Finally, I'll be responsible for creating the presentation. 

## Machine Learning Model

For our project, we created two machine learning models - a Deep Neural Network and a Random Forest Regressor. 

### Data Preparation

In order to prepare our data for the machine models, we first encoded the data, and then separated the data into bins. 

#### We tested several encodes, but ultimately decided to use the below options. 

Both were used to test our Random Forest Regressor model.

**Option 0:**

<img width="837" alt="Screen Shot 2022-08-03 at 5 45 32 PM" src="https://user-images.githubusercontent.com/99847786/182718283-2a0c65fa-8db6-4982-a473-58af3651ab69.png">

**Option 1:**
<img width="1107" alt="Screen Shot 2022-08-03 at 5 45 49 PM" src="https://user-images.githubusercontent.com/99847786/182718320-01229aa2-28ad-44d1-9974-ced7f6879738.png">
<img width="854" alt="Screen Shot 2022-08-03 at 5 46 09 PM" src="https://user-images.githubusercontent.com/99847786/182718327-d13c3b3d-7732-45a3-a6d5-620af85ebc2a.png">

#### The data was also binned to help standardize it for our models. 

<img width="1152" alt="Screen Shot 2022-08-03 at 5 50 49 PM" src="https://user-images.githubusercontent.com/99847786/182718945-8af08ea6-8d3d-4cd3-9717-eb1420e64fc2.png">


### Deep Neural Network

After our data was prepared, we split the data into training and testing sets, and standardized it by using the RobustScaler() feature from Scikit-Learn.

The deep neural network (or DNN for short) was initially set up with two hidden layers and one output layer. The first hidden layer used 250 units whereas the second layer used 120. There is the option to add more hidden layers, and the code to add them is commented in our ipynb file, but it doesn't seem like adding additional layers improves accuracy. Finally, a callback was setup to save the weights every five epochs. 

<img width="638" alt="Screen Shot 2022-08-03 at 5 22 37 AM" src="https://user-images.githubusercontent.com/99847786/182573734-5563a0de-f97b-43d9-8ecd-3ebdf7fa9919.png">

As we are using a regression style model, we used "mean_squared_error" instead of "binary_crossentropy" when we compiled our neural network. 

<img width="773" alt="Screen Shot 2022-08-03 at 5 25 20 PM" src="https://user-images.githubusercontent.com/99847786/182714932-5461ea8a-8ee9-4667-bc55-6904b49683dc.png">

The output was saved to an hdf5 file. The results of the DNN are shown in the visual below. 

<img width="541" alt="Screen Shot 2022-08-03 at 6 37 17 AM" src="https://user-images.githubusercontent.com/99847786/182588401-0e22cf94-21f3-4f94-b94e-fd0cba717639.png">

### Random Forest Regressor

After testing our DNN model, we decided to attempt a Random Forest Regressor model. According to the module's documentation (found on the official Scikit.leanr website), "A random forest is a meta estimator that fits a number of classifying decision trees on various sub-samples of the dataset and uses averaging to improve the predictive accuracy and control over-fitting." 

We set up our Random Forest Regressor with the features shown in the code below. We started with 200 estimators and stopped at 2000. We set the max depth to intervals of 10 between 10 and 110. Finally, we set a minimum of samples required to split each node (2, 5, 10) and set a minimum of samples for each "leaf" (1, 2, 4).

<img width="779" alt="image" src="https://user-images.githubusercontent.com/99847786/182715282-85e8fe28-f757-459d-a1f5-7aae9283eff0.png">

The model then produced the output in the visualization below. 

<img width="668" alt="image" src="https://user-images.githubusercontent.com/99847786/182716850-450175d2-7f75-4a8a-b85e-66e886af7e46.png">


# Summary of Results

In our analysis, we'll use the R2 score to evaluate the accuracy of our models. R2 is also known as the coefficient of determination, and serves as a better measure of accuracy for regression models than the mean squared error; the disadvantage of using the mean squared error is that it can be negativley impacted if the dependent variable in a model is scaled.  

## Deep Neural Network

<img width="532" alt="Screen Shot 2022-08-03 at 5 56 34 PM" src="https://user-images.githubusercontent.com/99847786/182721431-843e7093-5d31-44c9-ba26-d1927181125d.png">

R2 score of approximately  0.632 - in other words, the model is approximately 63.2% accurate.

The below visual shows the the predicted home price vs the actual: 

<img width="622" alt="Screen Shot 2022-08-03 at 6 18 35 PM" src="https://user-images.githubusercontent.com/99847786/182722191-3a248585-250b-4bf0-9ae3-3123f0f3d33c.png">

Finally, the below visual shows the error percentage in the price prediction model in a box and whisker plot. 

<img width="623" alt="Screen Shot 2022-08-03 at 6 22 22 PM" src="https://user-images.githubusercontent.com/99847786/182722707-f2bfa02c-235f-41fe-87f0-368a0e966826.png">

## Random Forest Regressor


<img width="622" alt="Screen Shot 2022-08-03 at 6 14 46 PM" src="https://user-images.githubusercontent.com/99847786/182721746-cec9fe8e-02c7-4728-a5f4-e74eba178396.png">


R2 score of approximately 0.754 - in other words, the model is approximately 75.4% accurate, which is a substantial increase over the DNN. 

The below visual shows the the predicted home price vs the actual: 


<img width="622" alt="Screen Shot 2022-08-03 at 6 19 04 PM" src="https://user-images.githubusercontent.com/99847786/182722266-f52f57f9-8e24-4d6f-8f67-9266b2863e36.png">

Finally, the below visual shows the error percentage in the price prediction model in a box and whisker plot. 

<img width="623" alt="Screen Shot 2022-08-03 at 6 22 10 PM" src="https://user-images.githubusercontent.com/99847786/182722742-389f4a5f-e681-4819-9386-81d7f9784586.png">

### Conclusion

Based on the results of our analysis, we can conclude that a Random Forest Regressor model is ideal for predicting the average home price based on the factors in our data. We were able to predict the price of a home with 75.4% accuracy using this model, a considerable improvement over the R2 score of 0.632 or 63.2% from the Deep Neural Network. 

