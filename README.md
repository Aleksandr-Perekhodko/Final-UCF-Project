# Final-UCF-Project

The purpose of my section of the project is to decide which technologies we'll use. Additionally, I'll write the ReadMe and summarize the results of our two models, and the corresponding statistical and analytical concepts. Finally, I'll be responsible for creating the presentation. 

## Machine Learning Model

For our project, we created two machine learning models - a Deep Neural Network and a Random Forest Regressor. 

### Data Preparation

In order to prepare our data for the machine models, we first encoded the data, and then separated the data into bins. 

### Deep Neural Network

After our data was prepared, we split the data into training and testing sets, and standardized it by using the RobustScaler() feature from Scikit-Learn.

The deep neural network (or DNN for short) was initially set up with two hidden layers and one output layer. The first hidden layer used 250 units whereas the second layer used 120. There is the option to add more hidden layers, and the code to add them is commented in our ipynb file, but it doesn't seem like adding additional layers improves accuracy. Finally, a callback was setup to save the weights every five epochs. 

<img width="638" alt="Screen Shot 2022-08-03 at 5 22 37 AM" src="https://user-images.githubusercontent.com/99847786/182573734-5563a0de-f97b-43d9-8ecd-3ebdf7fa9919.png">

The output was saved to an hdf5 file. The results of the DNN are shown in the visual below. 

<img width="541" alt="Screen Shot 2022-08-03 at 6 37 17 AM" src="https://user-images.githubusercontent.com/99847786/182588401-0e22cf94-21f3-4f94-b94e-fd0cba717639.png">

### Random Forest Regressor



# Summary of Results



